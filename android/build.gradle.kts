import java.util.Properties

android {
    signingConfigs {
        create("release") {
            val keystorePropertiesFile = rootProject.file("key.properties")
            val keystoreProperties = Properties()

            if (keystorePropertiesFile.exists()) {
                keystoreProperties.load(keystorePropertiesFile.inputStream())
                
                storeFile = file(keystoreProperties["storeFile"] as String)
                storePassword = keystoreProperties["storePassword"] as String
                keyAlias = keystoreProperties["keyAlias"] as String
                keyPassword = keystoreProperties["keyPassword"] as String
            } else {
                println("WARNING: key.properties file not found, release signing will fail.")
            }
        }
    }

    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
            signingConfig = signingConfigs.getByName("release")
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}