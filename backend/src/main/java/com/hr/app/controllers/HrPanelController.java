package com.hr.app.controllers;

import com.hr.app.mails.CustomMailing;
import com.hr.app.models.api_helpers.AssignQuizDto;
import com.hr.app.models.database.*;
import com.hr.app.models.dto.*;
import com.hr.app.repositories.*;
import com.hr.app.security.RandomString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;

@CrossOrigin
@RestController
public class HrPanelController {

    private final String serviceUrlParam = "/hr";
    private int hashLenght = 12;

    @Autowired
    private IUsersRepository usersRepository;

    @Autowired
    private IHrUsersRepository hrUsersRepository;

    @Autowired
    private IHrAlertsRepository hrAlertsRepository;

    @Autowired
    private ITestParticipantRepository testParticipantRepository;

    @Autowired
    private ITestsRepository testsRepository;

    @Autowired
    private IAnnouncementsRepository announcementsRepository;

    @Autowired
    private CustomMailing sendMail;


    @GetMapping(serviceUrlParam + "/list-of-applications")
    public Object getListOfApplications(HttpServletResponse response) {
        UsersModel usersModel;

        try {
            usersModel = getUserModel();
            long hrUserCompanyId = getHrUsersModel(usersModel.getId()).getFKhrUserCompany().getId();

            return prepareResponse(hrAlertsRepository.findHrAlerts(hrUserCompanyId));

        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            return new ResponseTransfer("Internal server error", e.toString()); // 500
        }
    }

    @Transactional
    @PostMapping(serviceUrlParam + "/alert/{alertId}/assign-quiz")
    public Object assignAQuiz(@PathVariable long alertId, @RequestBody AssignQuizDto assignQuizDto,
                              HttpServletResponse response) {
        try {
            // sprawdzenie, czy dla konkretnego alertu nie został przypisany już wcześniej quiz (test_participant)
            if (!Objects.isNull(hrAlertsRepository.findById(alertId)) &&
                    Objects.isNull(hrAlertsRepository.findById(alertId).getFKhrAlertTestParticipant())) {
                long currentQuestionNumber = 0;
                long startQuizTimeInMilis = 0;
                long testId = assignQuizDto.getTestId();
                String testCodeBasic = assignQuizDto.getTestCode();
                long userId = assignQuizDto.getUserId();
                long announcementId = assignQuizDto.getAnnouncementId();
                // sprawdzanie czy wszystkie wymagane dane są podane;
                if (Stream.of(testId, testCodeBasic, userId, announcementId).anyMatch(Objects::isNull)) {
                    response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // 400
                    return new ResponseTransfer("Request is not complete!");
                }

                TestsModel testsModel = testsRepository.findById(testId);
                UsersModel usersModel = usersRepository.findById(userId);
                // sprawdzanie czy quiz i user istnieje
                if (Objects.isNull(testsModel) || Objects.isNull(usersModel)) {
                    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR); // 500
                    return new ResponseTransfer("Data does not exist in the database. Please contact the administrator.");
                }

                String testCode = generateRandomCode(testCodeBasic, testId, announcementId, usersModel.getLogin());

                AnnouncementsModel announcementsModel = announcementsRepository.findById(announcementId);
                TestParticipantModel testParticipantModel = new TestParticipantModel(testsModel, usersModel, testCode,
                        currentQuestionNumber, startQuizTimeInMilis, announcementsModel, false);

                long savedTestParticipantId = testParticipantRepository.save(testParticipantModel).getId();
                TestParticipantModel testParticipantModelSaved = testParticipantRepository.findById(savedTestParticipantId);
                long savedParticipantAnnouncementId = testParticipantModelSaved.getFKtestAnnouncement().getId();
                long savedParticipantUserId = testParticipantModelSaved.getFKtestCodeuser().getId();

                // sprawdzanie, czy wszystkie wymagane dane są podane;
                if (Stream.of(savedTestParticipantId, testParticipantModelSaved.getId(),
                        savedParticipantAnnouncementId, savedParticipantUserId).anyMatch(Objects::isNull)) {
                    response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // 400
                    return new ResponseTransfer("Request is not completed!");
                }

                HrAlertModel hrAlertModel = hrAlertsRepository.findByFKhrAlertUserIdAndFKhrAlertAnnouncementId(
                        savedParticipantUserId, savedParticipantAnnouncementId);
                hrAlertModel.setFKhrAlertTestParticipant(testParticipantModelSaved);
                hrAlertModel.setRead(true);
                hrAlertsRepository.saveAndFlush(hrAlertModel);

                // sprawdzanie, czy wszystkie pola wymagane dla mailingu znajdują się w bazie
                if (!Stream.of(testParticipantModelSaved.getFKtestCodeuser(),
                        testParticipantModelSaved.getFKtestCodeuser().getEmail(),
                        testParticipantModelSaved.getFKtestCodeuser(),
                        testParticipantModelSaved.getFKtestCodeuser().getLogin(),
                        testParticipantModelSaved.getFKtestAnnouncement(),
                        testParticipantModelSaved.getFKtestAnnouncement().getTitle()).anyMatch(Objects::isNull)) {
                    String userMail = testParticipantModelSaved.getFKtestCodeuser().getEmail();
                    String userName = testParticipantModelSaved.getFKtestCodeuser().getLogin();
                    String announcementTitle = testParticipantModelSaved.getFKtestAnnouncement().getTitle();

                    sendMail.sendNewQuizCodeMessage(userMail, userName, announcementTitle, testCode);
                }

                return new ResponseTransfer("The user has been assigned a quiz");
            } else {
                response.setStatus(HttpServletResponse.SC_CONFLICT); // 409
                return new ResponseTransfer("Quiz has already been assigned to this alert");
            }
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR); // 500
            return new ResponseTransfer("Internal server error", e.toString());
        }
    }


    private UsersModel getUserModel() {
        String name = SecurityContextHolder.getContext().getAuthentication().getName();
        return usersRepository.findByLogin(name);
    }

    private HrUsersModel getHrUsersModel(long userId) {
        return hrUsersRepository.findByFKhrUserUserId(userId);
    }

    private List<HrAlertsDto> prepareResponse(List<HrAlertModel> dbResponse) {
        List<HrAlertsDto> responseList = new ArrayList<HrAlertsDto>();

        for (HrAlertModel item : dbResponse ) {
            SimplyUserDto user = new SimplyUserDto(item.getFKhrAlertUser().getId(), item.getFKhrAlertUser().getLogin());
            SimplyQuizInfoDto quizInfo = new SimplyQuizInfoDto();

            // zakładamy, że przy przypisaniu quizu do użytkownika, od razu przypisujemy też do niego
            // unikalny kod do uruchomienia quizu.
            if (!Objects.isNull(item.getFKhrAlertTestParticipant())) {
                quizInfo = new SimplyQuizInfoDto(
                        item.getFKhrAlertTestParticipant().getFKtestCodetest().getId(),
                        item.getFKhrAlertTestParticipant().getFKtestCodetest().getName(),
                        item.getFKhrAlertTestParticipant().getCode()
                );
            }

            HrAlertsDto preparedItem = new HrAlertsDto(item.getId(), item.getFKhrAlertAnnouncement().getId(), item.getFKhrAlertAnnouncement().getTitle(), user,
                    quizInfo);
            responseList.add(preparedItem);
        }
        return responseList;
    }

    private String generateRandomCode(String basicCode, long testId, long announcementId, String login) {
        String hash = testId + announcementId + login + "";
        RandomString hashedString = new RandomString(hashLenght, new SecureRandom(), hash);
        String code = basicCode + "_" + hashedString.nextString();
        if (Objects.nonNull(testParticipantRepository.findByCode(code)))
            return generateRandomCode(basicCode, testId, announcementId, login);
        else return code;
    }

}
