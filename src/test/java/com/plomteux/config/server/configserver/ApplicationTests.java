package com.plomteux.config.server.configserver;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;

import com.plomteux.config.server.configserver.configuration.SecurityConfiguration;

@SpringBootTest
@ActiveProfiles("test")
@ContextConfiguration(classes = SecurityConfiguration.class)
class ApplicationTests {

	@Test
	void contextLoads() {
	}

}
