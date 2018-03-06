CREATE DATABASE  IF NOT EXISTS `jbone_cas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jbone_cas`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: jbone_cas
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `RegexRegisteredService`
--

DROP TABLE IF EXISTS `RegexRegisteredService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegexRegisteredService` (
  `expression_type` varchar(50) NOT NULL DEFAULT 'regex',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_strategy` longblob,
  `attribute_release` longblob,
  `description` varchar(255) DEFAULT NULL,
  `evaluation_order` int(11) NOT NULL,
  `expiration_policy` longblob,
  `informationUrl` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logout_type` int(11) DEFAULT NULL,
  `logout_url` varchar(255) DEFAULT NULL,
  `mfa_policy` longblob,
  `name` varchar(255) NOT NULL,
  `privacyUrl` varchar(255) DEFAULT NULL,
  `proxy_policy` longblob,
  `public_key` longblob,
  `required_handlers` longblob,
  `serviceId` varchar(255) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `username_attr` longblob,
  `bypassApprovalPrompt` bit(1) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `clientSecret` varchar(255) DEFAULT NULL,
  `generateRefreshToken` bit(1) DEFAULT NULL,
  `jsonFormat` bit(1) DEFAULT NULL,
  `supported_grants` longblob,
  `supported_responses` longblob,
  `DYNAMIC_REG_TIME` datetime DEFAULT NULL,
  `dynamicallyRegistered` bit(1) DEFAULT NULL,
  `encryptIdToken` bit(1) DEFAULT NULL,
  `idTokenEncryptionAlg` varchar(255) DEFAULT NULL,
  `idTokenEncryptionEncoding` varchar(255) DEFAULT NULL,
  `implicit` bit(1) DEFAULT NULL,
  `jwks` varchar(255) DEFAULT NULL,
  `scopes` longblob,
  `sectorIdentifierUri` varchar(255) DEFAULT NULL,
  `signIdToken` bit(1) DEFAULT NULL,
  `subjectType` varchar(255) DEFAULT NULL,
  `encryptAssertions` bit(1) DEFAULT NULL,
  `metadataCriteriaDirection` varchar(255) DEFAULT NULL,
  `metadataCriteriaPattern` varchar(255) DEFAULT NULL,
  `metadataCriteriaRemoveEmptyEntitiesDescriptors` bit(1) DEFAULT NULL,
  `metadataCriteriaRemoveRolelessEntityDescriptors` bit(1) DEFAULT NULL,
  `metadataCriteriaRoles` varchar(255) DEFAULT NULL,
  `metadataExpirationDuration` varchar(255) DEFAULT NULL,
  `metadataLocation` varchar(255) DEFAULT NULL,
  `metadataMaxValidity` bigint(20) DEFAULT NULL,
  `metadataSignatureLocation` varchar(255) DEFAULT NULL,
  `nameIdQualifier` varchar(255) DEFAULT NULL,
  `requiredAuthenticationContextClass` varchar(255) DEFAULT NULL,
  `requiredNameIdFormat` varchar(255) DEFAULT NULL,
  `serviceProviderNameIdQualifier` varchar(255) DEFAULT NULL,
  `signAssertions` bit(1) DEFAULT NULL,
  `signResponses` bit(1) DEFAULT NULL,
  `signingCredentialType` varchar(255) DEFAULT NULL,
  `skipGeneratingAssertionNameId` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationInResponseTo` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationNotBefore` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationNotOnOrAfter` bit(1) DEFAULT NULL,
  `skipGeneratingSubjectConfirmationRecipient` bit(1) DEFAULT NULL,
  `addressingNamespace` varchar(255) DEFAULT NULL,
  `appliesTo` varchar(255) DEFAULT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `policyNamespace` varchar(255) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `realm` varchar(255) DEFAULT NULL,
  `tokenType` varchar(255) DEFAULT NULL,
  `wsdlEndpoint` varchar(255) DEFAULT NULL,
  `wsdlLocation` varchar(255) DEFAULT NULL,
  `wsdlService` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegexRegisteredService`
--

LOCK TABLES `RegexRegisteredService` WRITE;
/*!40000 ALTER TABLE `RegexRegisteredService` DISABLE KEYS */;
INSERT INTO `RegexRegisteredService` VALUES ('regex',3,'�\�\0sr\0>org.apereo.cas.services.DefaultRegisteredServiceAccessStrategyH\�V(�\0Z\0caseInsensitiveZ\0enabledI\0orderZ\0requireAllAttributesZ\0\nssoEnabledL\0rejectedAttributest\0Ljava/util/Map;L\0requiredAttributesq\0~\0L\0unauthorizedRedirectUrlt\0Ljava/net/URI;xp\0\0\0\0\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xp','�\�\0sr\0;org.apereo.cas.services.ReturnAllowedAttributeReleasePolicy�\�Ϧ\'\0L\0allowedAttributest\0Ljava/util/List;xr\0Gorg.apereo.cas.services.AbstractRegisteredServiceAttributeReleasePolicyI\�\�sl�\0Z\0+authorizedToReleaseAuthenticationAttributesZ\0%authorizedToReleaseCredentialPasswordZ\0&authorizedToReleaseProxyGrantingTicketZ\0excludeDefaultAttributesL\0\rconsentPolicyt\08Lorg/apereo/cas/services/RegisteredServiceConsentPolicy;L\0principalAttributesRepositoryt\0GLorg/apereo/cas/authentication/principal/PrincipalAttributesRepository;L\0principalIdAttributet\0Ljava/lang/String;L\0 registeredServiceAttributeFiltert\0:Lorg/apereo/cas/services/RegisteredServiceAttributeFilter;xp\0\0\0sr\0Eorg.apereo.cas.services.consent.DefaultRegisteredServiceConsentPolicyى�ԿI\0Z\0enabledL\0excludedAttributest\0Ljava/util/Set;L\0includeOnlyAttributesq\0~\0	xpppsr\0Lorg.apereo.cas.authentication.principal.DefaultPrincipalAttributesRepository�+(r_��\0\0xr\0Sorg.apereo.cas.authentication.principal.cache.AbstractPrincipalAttributesRepositoryX �Ĥ0b\0J\0\nexpirationL\0mergingStrategyt\0eLorg/apereo/cas/authentication/principal/cache/AbstractPrincipalAttributesRepository$MergingStrategy;L\0timeUnitq\0~\0xp\0\0\0\0\0\0\0pt\0HOURSppsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0\0w\0\0\0\0x','Jbone服务监控',1,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceExpirationPolicyF\�y��<\�\0Z\0deleteWhenExpiredZ\0notifyWhenDeletedL\0expirationDatet\0Ljava/lang/String;xp\0\0p',NULL,NULL,1,'http://jbone-sm-monitor.majunwei.com:10003/casLogout','�\�\0sr\0Aorg.apereo.cas.services.DefaultRegisteredServiceMultifactorPolicy\�j\�݈Ys?\0Z\0\rbypassEnabledL\0failureModet\0ILorg/apereo/cas/services/RegisteredServiceMultifactorPolicy$FailureModes;L\0\"multifactorAuthenticationProviderst\0Ljava/util/Set;L\0principalAttributeNameTriggert\0Ljava/lang/String;L\0principalAttributeValueToMatchq\0~\0xp\0~r\0Gorg.apereo.cas.services.RegisteredServiceMultifactorPolicy$FailureModes\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0NOT_SETsr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0xpp','Jbone  务监控',NULL,'�\�\0sr\0:org.apereo.cas.services.RefuseRegisteredServiceProxyPolicy��\0n\�X\�T\0\0xp',NULL,'�\�\0sr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','^http://jbone-sm-monitor.majunwei.com:10003/cas',NULL,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceUsernameProviderP\��F%�aW\0\0xr\0Forg.apereo.cas.services.BaseRegisteredServiceUsernameAttributeProvider����wV8q\0Z\0encryptUsernameL\0canonicalizationModet\0Ljava/lang/String;xp\0t\0NONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('regex',4,'�\�\0sr\0>org.apereo.cas.services.DefaultRegisteredServiceAccessStrategyH\�V(�\0Z\0caseInsensitiveZ\0enabledI\0orderZ\0requireAllAttributesZ\0\nssoEnabledL\0rejectedAttributest\0Ljava/util/Map;L\0requiredAttributesq\0~\0L\0unauthorizedRedirectUrlt\0Ljava/net/URI;xp\0\0\0\0\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xp','�\�\0sr\0;org.apereo.cas.services.ReturnAllowedAttributeReleasePolicy�\�Ϧ\'\0L\0allowedAttributest\0Ljava/util/List;xr\0Gorg.apereo.cas.services.AbstractRegisteredServiceAttributeReleasePolicyI\�\�sl�\0Z\0+authorizedToReleaseAuthenticationAttributesZ\0%authorizedToReleaseCredentialPasswordZ\0&authorizedToReleaseProxyGrantingTicketZ\0excludeDefaultAttributesL\0\rconsentPolicyt\08Lorg/apereo/cas/services/RegisteredServiceConsentPolicy;L\0principalAttributesRepositoryt\0GLorg/apereo/cas/authentication/principal/PrincipalAttributesRepository;L\0principalIdAttributet\0Ljava/lang/String;L\0 registeredServiceAttributeFiltert\0:Lorg/apereo/cas/services/RegisteredServiceAttributeFilter;xp\0\0\0sr\0Eorg.apereo.cas.services.consent.DefaultRegisteredServiceConsentPolicyى�ԿI\0Z\0enabledL\0excludedAttributest\0Ljava/util/Set;L\0includeOnlyAttributesq\0~\0	xpppsr\0Lorg.apereo.cas.authentication.principal.DefaultPrincipalAttributesRepository�+(r_��\0\0xr\0Sorg.apereo.cas.authentication.principal.cache.AbstractPrincipalAttributesRepositoryX �Ĥ0b\0J\0\nexpirationL\0mergingStrategyt\0eLorg/apereo/cas/authentication/principal/cache/AbstractPrincipalAttributesRepository$MergingStrategy;L\0timeUnitq\0~\0xp\0\0\0\0\0\0\0pt\0HOURSppsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0\0w\0\0\0\0x','Jbone服务管理',1,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceExpirationPolicyF\�y��<\�\0Z\0deleteWhenExpiredZ\0notifyWhenDeletedL\0expirationDatet\0Ljava/lang/String;xp\0\0p',NULL,NULL,1,'http://jbone-sm-admin.majunwei.com:10002/casLogout','�\�\0sr\0Aorg.apereo.cas.services.DefaultRegisteredServiceMultifactorPolicy\�j\�݈Ys?\0Z\0\rbypassEnabledL\0failureModet\0ILorg/apereo/cas/services/RegisteredServiceMultifactorPolicy$FailureModes;L\0\"multifactorAuthenticationProviderst\0Ljava/util/Set;L\0principalAttributeNameTriggert\0Ljava/lang/String;L\0principalAttributeValueToMatchq\0~\0xp\0~r\0Gorg.apereo.cas.services.RegisteredServiceMultifactorPolicy$FailureModes\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0NOT_SETsr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0xpp','Jbone服务管理',NULL,'�\�\0sr\0:org.apereo.cas.services.RefuseRegisteredServiceProxyPolicy��\0n\�X\�T\0\0xp',NULL,'�\�\0sr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','^http://jbone-sm-admin.majunwei.com:10002/cas',NULL,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceUsernameProviderP\��F%�aW\0\0xr\0Forg.apereo.cas.services.BaseRegisteredServiceUsernameAttributeProvider����wV8q\0Z\0encryptUsernameL\0canonicalizationModet\0Ljava/lang/String;xp\0t\0NONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('regex',5,'�\�\0sr\0>org.apereo.cas.services.DefaultRegisteredServiceAccessStrategyH\�V(�\0Z\0caseInsensitiveZ\0enabledI\0orderZ\0requireAllAttributesZ\0\nssoEnabledL\0rejectedAttributest\0Ljava/util/Map;L\0requiredAttributesq\0~\0L\0unauthorizedRedirectUrlt\0Ljava/net/URI;xp\0\0\0\0\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xp','�\�\0sr\0;org.apereo.cas.services.ReturnAllowedAttributeReleasePolicy�\�Ϧ\'\0L\0allowedAttributest\0Ljava/util/List;xr\0Gorg.apereo.cas.services.AbstractRegisteredServiceAttributeReleasePolicyI\�\�sl�\0Z\0+authorizedToReleaseAuthenticationAttributesZ\0%authorizedToReleaseCredentialPasswordZ\0&authorizedToReleaseProxyGrantingTicketZ\0excludeDefaultAttributesL\0\rconsentPolicyt\08Lorg/apereo/cas/services/RegisteredServiceConsentPolicy;L\0principalAttributesRepositoryt\0GLorg/apereo/cas/authentication/principal/PrincipalAttributesRepository;L\0principalIdAttributet\0Ljava/lang/String;L\0 registeredServiceAttributeFiltert\0:Lorg/apereo/cas/services/RegisteredServiceAttributeFilter;xp\0\0\0sr\0Eorg.apereo.cas.services.consent.DefaultRegisteredServiceConsentPolicyى�ԿI\0Z\0enabledL\0excludedAttributest\0Ljava/util/Set;L\0includeOnlyAttributesq\0~\0	xpppsr\0Lorg.apereo.cas.authentication.principal.DefaultPrincipalAttributesRepository�+(r_��\0\0xr\0Sorg.apereo.cas.authentication.principal.cache.AbstractPrincipalAttributesRepositoryX �Ĥ0b\0J\0\nexpirationL\0mergingStrategyt\0eLorg/apereo/cas/authentication/principal/cache/AbstractPrincipalAttributesRepository$MergingStrategy;L\0timeUnitq\0~\0xp\0\0\0\0\0\0\0pt\0HOURSppsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0\0w\0\0\0\0x','Jbone系统管理',1,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceExpirationPolicyF\�y��<\�\0Z\0deleteWhenExpiredZ\0notifyWhenDeletedL\0expirationDatet\0Ljava/lang/String;xp\0\0p',NULL,NULL,1,'http://jbone-sys-admin.majunwei.com:20002/casLogout','�\�\0sr\0Aorg.apereo.cas.services.DefaultRegisteredServiceMultifactorPolicy\�j\�݈Ys?\0Z\0\rbypassEnabledL\0failureModet\0ILorg/apereo/cas/services/RegisteredServiceMultifactorPolicy$FailureModes;L\0\"multifactorAuthenticationProviderst\0Ljava/util/Set;L\0principalAttributeNameTriggert\0Ljava/lang/String;L\0principalAttributeValueToMatchq\0~\0xp\0~r\0Gorg.apereo.cas.services.RegisteredServiceMultifactorPolicy$FailureModes\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0NOT_SETsr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0xpp','Jbone系统管理',NULL,'�\�\0sr\0:org.apereo.cas.services.RefuseRegisteredServiceProxyPolicy��\0n\�X\�T\0\0xp',NULL,'�\�\0sr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','^http://jbone-sys-admin.majunwei.com:20002/cas',NULL,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceUsernameProviderP\��F%�aW\0\0xr\0Forg.apereo.cas.services.BaseRegisteredServiceUsernameAttributeProvider����wV8q\0Z\0encryptUsernameL\0canonicalizationModet\0Ljava/lang/String;xp\0t\0NONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('regex',6,'�\�\0sr\0>org.apereo.cas.services.DefaultRegisteredServiceAccessStrategyH\�V(�\0Z\0caseInsensitiveZ\0enabledI\0orderZ\0requireAllAttributesZ\0\nssoEnabledL\0rejectedAttributest\0Ljava/util/Map;L\0requiredAttributesq\0~\0L\0unauthorizedRedirectUrlt\0Ljava/net/URI;xp\0\0\0\0\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xp','�\�\0sr\0;org.apereo.cas.services.ReturnAllowedAttributeReleasePolicy�\�Ϧ\'\0L\0allowedAttributest\0Ljava/util/List;xr\0Gorg.apereo.cas.services.AbstractRegisteredServiceAttributeReleasePolicyI\�\�sl�\0Z\0+authorizedToReleaseAuthenticationAttributesZ\0%authorizedToReleaseCredentialPasswordZ\0&authorizedToReleaseProxyGrantingTicketZ\0excludeDefaultAttributesL\0\rconsentPolicyt\08Lorg/apereo/cas/services/RegisteredServiceConsentPolicy;L\0principalAttributesRepositoryt\0GLorg/apereo/cas/authentication/principal/PrincipalAttributesRepository;L\0principalIdAttributet\0Ljava/lang/String;L\0 registeredServiceAttributeFiltert\0:Lorg/apereo/cas/services/RegisteredServiceAttributeFilter;xp\0\0\0sr\0Eorg.apereo.cas.services.consent.DefaultRegisteredServiceConsentPolicyى�ԿI\0Z\0enabledL\0excludedAttributest\0Ljava/util/Set;L\0includeOnlyAttributesq\0~\0	xpppsr\0Lorg.apereo.cas.authentication.principal.DefaultPrincipalAttributesRepository�+(r_��\0\0xr\0Sorg.apereo.cas.authentication.principal.cache.AbstractPrincipalAttributesRepositoryX �Ĥ0b\0J\0\nexpirationL\0mergingStrategyt\0eLorg/apereo/cas/authentication/principal/cache/AbstractPrincipalAttributesRepository$MergingStrategy;L\0timeUnitq\0~\0xp\0\0\0\0\0\0\0pt\0HOURSppsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0\0w\0\0\0\0x','Jbone单点登录管理',1,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceExpirationPolicyF\�y��<\�\0Z\0deleteWhenExpiredZ\0notifyWhenDeletedL\0expirationDatet\0Ljava/lang/String;xp\0\0p',NULL,NULL,1,'http://jbone-cas-manager.majunwei.com:30002/casLogout','�\�\0sr\0Aorg.apereo.cas.services.DefaultRegisteredServiceMultifactorPolicy\�j\�݈Ys?\0Z\0\rbypassEnabledL\0failureModet\0ILorg/apereo/cas/services/RegisteredServiceMultifactorPolicy$FailureModes;L\0\"multifactorAuthenticationProviderst\0Ljava/util/Set;L\0principalAttributeNameTriggert\0Ljava/lang/String;L\0principalAttributeValueToMatchq\0~\0xp\0~r\0Gorg.apereo.cas.services.RegisteredServiceMultifactorPolicy$FailureModes\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0NOT_SETsr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0xpp','Jbone单点登录管理',NULL,'�\�\0sr\0:org.apereo.cas.services.RefuseRegisteredServiceProxyPolicy��\0n\�X\�T\0\0xp',NULL,'�\�\0sr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','^http://jbone-cas-manager.majunwei.com:30002/cas',NULL,'�\�\0sr\0@org.apereo.cas.services.DefaultRegisteredServiceUsernameProviderP\��F%�aW\0\0xr\0Forg.apereo.cas.services.BaseRegisteredServiceUsernameAttributeProvider����wV8q\0Z\0encryptUsernameL\0canonicalizationModet\0Ljava/lang/String;xp\0t\0NONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `RegexRegisteredService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegexRegisteredServiceProperty`
--

DROP TABLE IF EXISTS `RegexRegisteredServiceProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegexRegisteredServiceProperty` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_values` longblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegexRegisteredServiceProperty`
--

LOCK TABLES `RegexRegisteredServiceProperty` WRITE;
/*!40000 ALTER TABLE `RegexRegisteredServiceProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegexRegisteredServiceProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegisteredServiceImplContact`
--

DROP TABLE IF EXISTS `RegisteredServiceImplContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegisteredServiceImplContact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegisteredServiceImplContact`
--

LOCK TABLES `RegisteredServiceImplContact` WRITE;
/*!40000 ALTER TABLE `RegisteredServiceImplContact` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegisteredServiceImplContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegisteredServiceImpl_Props`
--

DROP TABLE IF EXISTS `RegisteredServiceImpl_Props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegisteredServiceImpl_Props` (
  `AbstractRegisteredService_id` bigint(20) NOT NULL,
  `properties_id` bigint(20) NOT NULL,
  `properties_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`AbstractRegisteredService_id`,`properties_KEY`),
  UNIQUE KEY `UK_i2mjaqjwxpvurc6aefjkx5x97` (`properties_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegisteredServiceImpl_Props`
--

LOCK TABLES `RegisteredServiceImpl_Props` WRITE;
/*!40000 ALTER TABLE `RegisteredServiceImpl_Props` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegisteredServiceImpl_Props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RegisteredService_Contacts`
--

DROP TABLE IF EXISTS `RegisteredService_Contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RegisteredService_Contacts` (
  `AbstractRegisteredService_id` bigint(20) NOT NULL,
  `contacts_id` bigint(20) NOT NULL,
  `contacts_ORDER` int(11) NOT NULL,
  PRIMARY KEY (`AbstractRegisteredService_id`,`contacts_ORDER`),
  UNIQUE KEY `UK_s7mf4a23wejqx62tt4vh3tgwi` (`contacts_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegisteredService_Contacts`
--

LOCK TABLES `RegisteredService_Contacts` WRITE;
/*!40000 ALTER TABLE `RegisteredService_Contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `RegisteredService_Contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SERVICETICKET`
--

DROP TABLE IF EXISTS `SERVICETICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SERVICETICKET` (
  `TYPE` varchar(31) NOT NULL,
  `ID` varchar(255) NOT NULL,
  `NUMBER_OF_TIMES_USED` int(11) DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `EXPIRATION_POLICY` longblob NOT NULL,
  `LAST_TIME_USED` datetime DEFAULT NULL,
  `PREVIOUS_LAST_TIME_USED` datetime DEFAULT NULL,
  `FROM_NEW_LOGIN` bit(1) NOT NULL,
  `TICKET_ALREADY_GRANTED` bit(1) NOT NULL,
  `SERVICE` longblob NOT NULL,
  `ticketGrantingTicket_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK60oigifivx01ts3n8vboyqs38` (`ticketGrantingTicket_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVICETICKET`
--

LOCK TABLES `SERVICETICKET` WRITE;
/*!40000 ALTER TABLE `SERVICETICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `SERVICETICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TICKETGRANTINGTICKET`
--

DROP TABLE IF EXISTS `TICKETGRANTINGTICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TICKETGRANTINGTICKET` (
  `TYPE` varchar(31) NOT NULL,
  `ID` varchar(255) NOT NULL,
  `NUMBER_OF_TIMES_USED` int(11) DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `EXPIRATION_POLICY` longblob NOT NULL,
  `LAST_TIME_USED` datetime DEFAULT NULL,
  `PREVIOUS_LAST_TIME_USED` datetime DEFAULT NULL,
  `AUTHENTICATION` longblob NOT NULL,
  `DESCENDANT_TICKETS` longblob NOT NULL,
  `EXPIRED` bit(1) NOT NULL,
  `PROXIED_BY` longblob,
  `PROXY_GRANTING_TICKETS` longblob NOT NULL,
  `SERVICES_GRANTED_ACCESS_TO` longblob NOT NULL,
  `ticketGrantingTicket_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKiqyu3qw2fxf5qaqin02mox8r4` (`ticketGrantingTicket_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TICKETGRANTINGTICKET`
--

LOCK TABLES `TICKETGRANTINGTICKET` WRITE;
/*!40000 ALTER TABLE `TICKETGRANTINGTICKET` DISABLE KEYS */;
INSERT INTO `TICKETGRANTINGTICKET` VALUES ('TGT','TGT-2-lZDQLETD5XtEu4aeFnIZzchlzTsWTlhjGP7Ny7-xzCveKQeXVzFRLwh5Hs0p1lDRhgM-majunweideMacBook-Pro',147,'2018-03-04 17:21:37','�\�\0sr\0Borg.apereo.cas.ticket.support.RememberMeDelegatingExpirationPolicy\�\�\�\�9!a\0\0xr\0<org.apereo.cas.ticket.support.BaseDelegatingExpirationPolicyRDB��\��`\0L\0defaultExpirationPolicyt\0(Lorg/apereo/cas/ticket/ExpirationPolicy;L\0policiest\0Ljava/util/Map;xr\09org.apereo.cas.ticket.support.AbstractCasExpirationPolicyo�KI{�\�\0L\0namet\0Ljava/lang/String;xpt\0IRememberMeDelegatingExpirationPolicy-3f1c94b7-95cb-4082-91fe-5b50ade4e165sr\09org.apereo.cas.ticket.support.HardTimeoutExpirationPolicy]^\�dۈ\�\�\0J\0timeToKillInSecondsxq\0~\0t\0@HardTimeoutExpirationPolicy-44f92f6c-1605-437e-8055-04a5a450c8e6\0\0\0\0\0\0p�sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0REMEMBER_MEq\0~\0	t\0DEFAULTsr\05org.apereo.cas.ticket.support.TimeoutExpirationPolicy�2#�!p\0J\0timeToKillInSecondsxq\0~\0t\0<TimeoutExpirationPolicy-2663c492-1181-4f0c-9f43-6c081cb570de\0\0\0\0\0\0p�x\0','2018-03-04 17:28:40','2018-03-04 17:28:40','�\�\0sr\03org.apereo.cas.authentication.DefaultAuthentication,~s��J\�O\0L\0\nattributest\0Ljava/util/Map;L\0authenticationDatet\0Ljava/time/ZonedDateTime;L\0credentialst\0Ljava/util/List;L\0failuresq\0~\0L\0	principalt\03Lorg/apereo/cas/authentication/principal/Principal;L\0	successesq\0~\0xpsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0credentialTypet\0$RememberMeUsernamePasswordCredentialt\0authenticationMethodt\0\ZShiroAuthenticationHandlert\0 successfulAuthenticationHandlerssr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0xx\0sr\0\rjava.time.Ser�]��\"H�\0\0xpw\0\0\�\',g\�@ \0\rAsia/Shanghaixsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\05org.apereo.cas.authentication.BasicCredentialMetaDataDib�=��a\0L\0credentialClasst\0Ljava/lang/Class;L\0idt\0Ljava/lang/String;xpvr\0Borg.apereo.cas.authentication.RememberMeUsernamePasswordCredential�\�C��rk\0Z\0\nrememberMexr\08org.apereo.cas.authentication.UsernamePasswordCredential�F�c\���E\0L\0passwordq\0~\0L\0usernameq\0~\0xpt\0jbonexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsr\07org.apereo.cas.authentication.principal.SimplePrincipal\�j���}<\0L\0\nattributesq\0~\0L\0idq\0~\0xpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0jbonesq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ZShiroAuthenticationHandlersr\02org.apereo.cas.authentication.DefaultHandlerResult\�\�\�\�xw\�k\0L\0credentialMetaDatat\02Lorg/apereo/cas/authentication/CredentialMetaData;L\0handlerNameq\0~\0L\0	principalq\0~\0L\0warningsq\0~\0xpsq\0~\0vq\0~\0\Zq\0~\0q\0~\0#sq\0~\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xq\0~\0!px\0','�\�\0sr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','\0',NULL,'�\�\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','�\�\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\08ST-207-WfbEG2fsbbsg84oDEVJ1l6yJ2-I-majunweideMacBook-Prosr\0Gorg.apereo.cas.authentication.principal.SimpleWebApplicationServiceImpls����m�\�\0\0xr\0Eorg.apereo.cas.authentication.principal.AbstractWebApplicationServicew��AI��\0Z\0loggedOutAlreadyL\0\nartifactIdt\0Ljava/lang/String;L\0formatt\02Lorg/apereo/cas/validation/ValidationResponseType;L\0idq\0~\0L\0originalUrlq\0~\0L\0	principalq\0~\0xp\0p~r\00org.apereo.cas.validation.ValidationResponseType\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0XMLt\0/http://jbone-cas-manager.majunwei.com:30002/casq\0~\0t\0jbonex',NULL),('TGT','TGT-2-uu41EF63m5gwsIMUpniZRV-A6C0YEDUef2WKeh4T9AdQBBOhVL6SaLi4iT3eKM0ruCA-majunweideMacBook-Pro',7,'2018-03-04 22:16:13','�\�\0sr\0Borg.apereo.cas.ticket.support.RememberMeDelegatingExpirationPolicy\�\�\�\�9!a\0\0xr\0<org.apereo.cas.ticket.support.BaseDelegatingExpirationPolicyRDB��\��`\0L\0defaultExpirationPolicyt\0(Lorg/apereo/cas/ticket/ExpirationPolicy;L\0policiest\0Ljava/util/Map;xr\09org.apereo.cas.ticket.support.AbstractCasExpirationPolicyo�KI{�\�\0L\0namet\0Ljava/lang/String;xpt\0IRememberMeDelegatingExpirationPolicy-677b07bd-c5be-461d-9154-e51f3b7a6f62sr\09org.apereo.cas.ticket.support.HardTimeoutExpirationPolicy]^\�dۈ\�\�\0J\0timeToKillInSecondsxq\0~\0t\0@HardTimeoutExpirationPolicy-a09c6794-e2a8-4618-9727-7a316b962aed\0\0\0\0\0\0p�sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0REMEMBER_MEq\0~\0	t\0DEFAULTsr\05org.apereo.cas.ticket.support.TimeoutExpirationPolicy�2#�!p\0J\0timeToKillInSecondsxq\0~\0t\0<TimeoutExpirationPolicy-a79e386b-7a04-45b6-af79-b21167594e8d\0\0\0\0\0\0p�x\0','2018-03-04 22:19:17','2018-03-04 22:19:17','�\�\0sr\03org.apereo.cas.authentication.DefaultAuthentication,~s��J\�O\0L\0\nattributest\0Ljava/util/Map;L\0authenticationDatet\0Ljava/time/ZonedDateTime;L\0credentialst\0Ljava/util/List;L\0failuresq\0~\0L\0	principalt\03Lorg/apereo/cas/authentication/principal/Principal;L\0	successesq\0~\0xpsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0credentialTypet\0$RememberMeUsernamePasswordCredentialt\0authenticationMethodt\0\ZShiroAuthenticationHandlert\0 successfulAuthenticationHandlerssr\0java.util.LinkedHashSet\�l\�Z�\�*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0xx\0sr\0\rjava.time.Ser�]��\"H�\0\0xpw\0\0\�\Z\�t� \0\rAsia/Shanghaixsr\0java.util.ArrayListx�\��\�a�\0I\0sizexp\0\0\0w\0\0\0sr\05org.apereo.cas.authentication.BasicCredentialMetaDataDib�=��a\0L\0credentialClasst\0Ljava/lang/Class;L\0idt\0Ljava/lang/String;xpvr\0Borg.apereo.cas.authentication.RememberMeUsernamePasswordCredential�\�C��rk\0Z\0\nrememberMexr\08org.apereo.cas.authentication.UsernamePasswordCredential�F�c\���E\0L\0passwordq\0~\0L\0usernameq\0~\0xpt\0jbonexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xsr\07org.apereo.cas.authentication.principal.SimplePrincipal\�j���}<\0L\0\nattributesq\0~\0L\0idq\0~\0xpsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0jbonesq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ZShiroAuthenticationHandlersr\02org.apereo.cas.authentication.DefaultHandlerResult\�\�\�\�xw\�k\0L\0credentialMetaDatat\02Lorg/apereo/cas/authentication/CredentialMetaData;L\0handlerNameq\0~\0L\0	principalq\0~\0L\0warningsq\0~\0xpsq\0~\0vq\0~\0\Zq\0~\0q\0~\0#sq\0~\0sq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xq\0~\0!px\0','�\�\0sr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0\0x','\0',NULL,'�\�\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0\0w\0\0\0\0\0\0\0x','�\�\0sr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\07ST-75-uKbX6Rib1m_nmOpIMrMKIlLO3g0-majunweideMacBook-Prosr\0Gorg.apereo.cas.authentication.principal.SimpleWebApplicationServiceImpls����m�\�\0\0xr\0Eorg.apereo.cas.authentication.principal.AbstractWebApplicationServicew��AI��\0Z\0loggedOutAlreadyL\0\nartifactIdt\0Ljava/lang/String;L\0formatt\02Lorg/apereo/cas/validation/ValidationResponseType;L\0idq\0~\0L\0originalUrlq\0~\0L\0	principalq\0~\0xp\0p~r\00org.apereo.cas.validation.ValidationResponseType\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0XMLt\0-http://jbone-sys-admin.majunwei.com:20002/casq\0~\0t\0jbonet\07ST-77-3FMajkY7VyobnG65lL6AzL6ZZnk-majunweideMacBook-Prosq\0~\0\0pq\0~\0\nt\0,http://jbone-sm-admin.majunwei.com:10002/casq\0~\0t\0jbonet\07ST-76-CAAwHKm0bEW4uMhd82g4Djnl90M-majunweideMacBook-Prosq\0~\0\0pq\0~\0\nt\0.http://jbone-sm-monitor.majunwei.com:10003/casq\0~\0t\0jbonex',NULL);
/*!40000 ALTER TABLE `TICKETGRANTINGTICKET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

DROP TABLE IF EXISTS `locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locks` (
  `application_id` varchar(255) NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `lockVer` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`application_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
INSERT INTO `locks` VALUES ('cas-ticket-registry-cleaner',NULL,NULL,107);
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06  8:56:59
