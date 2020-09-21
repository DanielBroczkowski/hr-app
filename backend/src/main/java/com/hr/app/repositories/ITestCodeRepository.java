package com.hr.app.repositories;

import com.hr.app.models.TestCodeModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ITestCodeRepository extends JpaRepository<TestCodeModel, Long> {

    TestCodeModel findByCode(String code);
}