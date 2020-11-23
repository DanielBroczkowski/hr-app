package com.hr.app.repositories;

import com.hr.app.models.database.CvsModel;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ICvsRepository extends JpaRepository<CvsModel, Long> {

    CvsModel findById (long id);

    List<CvsModel> findAllByFKcvUserId(long user_id);

    CvsModel findByFKcvUserId(long user_id);
}
