.class public abstract Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;
.super Ljava/lang/Object;
.source "HtcFeatureFlags.java"

# interfaces
.implements Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sAndroidAppFrameworkReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static final sAndroidNetworkingReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static final sAndroidTelephonyReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static final sManager:Lcom/htc/customization/HtcCustomizationManager;

.field private static final sMultimediaReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static final sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static final sSystemReader:Lcom/htc/customization/HtcCustomizationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/HtcSkuFlags;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->TAG:Ljava/lang/String;

    .line 25
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    .line 36
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    .line 37
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 38
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSettingsReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 39
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getAndroidNetworkingReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidNetworkingReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 40
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getAndroidTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidTelephonyReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 41
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getAndroidAppFrameworkReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidAppFrameworkReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 42
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getMultimediaReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sMultimediaReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidAppFrameworkReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 94
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 95
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "getAndroidAppFrameworkReader, unable to get customization manager"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "Android_App_Framework"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAndroidNetworkingReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 71
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "getAndroidNetworkingReader, unable to get customization manager"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "Android_Networking"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAndroidTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 82
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 83
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "getAndroidTelephonyReader, unable to get customization manager"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "Android_Telephony"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 637
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 638
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "getBoolean, unabled to get settings reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 643
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method public static getByte(Ljava/lang/String;B)B
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 657
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 658
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 659
    const-string v0, "getByte, unabled to get settings reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 663
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readByte(Ljava/lang/String;B)B

    move-result p1

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 151
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 152
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "getDeviceType, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "device_type"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getIntArray(Ljava/lang/String;[I)[I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 667
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 668
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "getIntArray, unabled to get settings reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 673
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 677
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 678
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 679
    const-string v0, "getInteger, unabled to get settings reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 683
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method private static getMultimediaReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 106
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 107
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "getMultimediaReader, unable to get customization manager"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "Android_Multimedia"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 647
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 648
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 649
    const-string v0, "getNullableBoolean, unabled to get settings reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 653
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readNullableBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0
.end method

.method public static getRadioType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 193
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "getRadioType, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "radio_type"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getRegion()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 172
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "getRegion, unable to get region"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "region"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getSenseVersion()F
    .locals 4

    .prologue
    .line 132
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersionInString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, value:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 147
    :goto_0
    return v3

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 142
    :try_start_1
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 143
    .local v1, format:Ljava/text/NumberFormat;
    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 144
    .end local v1           #format:Ljava/text/NumberFormat;
    :catch_1
    move-exception v0

    .line 145
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 147
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSenseVersionInString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 123
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "getSenseVersion, unable to get system reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 126
    :cond_0
    const-string v0, "0.0"

    .line 128
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v1, "sense_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSettingsReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 59
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "getSettingsReader, unable to get customization manager"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "Settings"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSkuId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 162
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "getSkuId, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 687
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 688
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "getString, unabled to get settings reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 693
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 697
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 698
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 699
    const-string v0, "getStringArray, unabled to get settings reader"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 703
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSettingsReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getSystemReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    if-nez v0, :cond_1

    .line 47
    sget-boolean v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "getSystemReader, unable to get customization manager"

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string v1, "System"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAsiaIndiaSku()Z
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 412
    .local v0, sku:I
    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 413
    const/4 v1, 0x1

    .line 416
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAttSku()Z
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 224
    .local v0, sku:I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 225
    const/4 v1, 0x1

    .line 228
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCdmaChameleonEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 584
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidTelephonyReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 585
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 586
    const-string v1, "isCdmaChameleonEnabled, unable to get Android_Telephony reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 591
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidTelephonyReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "cdma_telephony_chameleon"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isChinaRegion()Z
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getRegion()I

    move-result v0

    .line 403
    .local v0, region:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 404
    const/4 v1, 0x1

    .line 407
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCmccSku()Z
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 238
    .local v0, sku:I
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v1, 0x1

    .line 242
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCricketUsSku()Z
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 255
    .local v0, sku:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 256
    const/4 v1, 0x1

    .line 259
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCtSku()Z
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 269
    .local v0, sku:I
    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 270
    :cond_0
    const/4 v1, 0x1

    .line 273
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCuSku()Z
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 283
    .local v0, sku:I
    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 284
    const/4 v1, 0x1

    .line 287
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isDisabledInDemoMode()Z
    .locals 4

    .prologue
    .line 627
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 628
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_is_demo"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isIddaDevice()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 206
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "isIddaDevice, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "isidda_device"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isIusacellMxSpaSku()Z
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 299
    .local v0, sku:I
    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 300
    const/4 v1, 0x1

    .line 303
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKddiSku()Z
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 313
    .local v0, sku:I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 314
    const/4 v1, 0x1

    .line 317
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMhsSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 557
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 558
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 559
    const-string v1, "isMhsSupported, unable to get Android_Networking reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidNetworkingReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "tethering_guard_support"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhoneFeatureWorldPhone()Z
    .locals 1

    .prologue
    .line 570
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isWorldPhone()Z

    move-result v0

    return v0
.end method

.method public static isSprintBoostSku()Z
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprintSeries()Z
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintBoostSku()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprintSku()Z
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSprintVmSku()Z
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupport3LM()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 534
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 535
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "isSupport3LM, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 541
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_3lm"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportBeatsAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 428
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 429
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 430
    const-string v1, "isSupportBeatsAudio, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_beats_audio"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportBoomSound()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 441
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 442
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 443
    const-string v1, "isSupportBoomSound, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_boomsound_effect"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportDockModule()Z
    .locals 2

    .prologue
    .line 515
    const-string v0, "support_dock_module"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportEasyAccess(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 506
    const-string v0, "com.htc.sense.easyaccessservice"

    invoke-static {p0, v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGestures()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 494
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidAppFrameworkReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 495
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 496
    const-string v1, "isSupportGestures, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 501
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sAndroidAppFrameworkReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "enable_gesture_service"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportHarman()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 454
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sMultimediaReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 455
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "isSupportHarman, unable to get multimedia reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 465
    .local v0, result:Z
    :cond_0
    :goto_0
    return v0

    .line 461
    .end local v0           #result:Z
    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sMultimediaReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_harman"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 462
    .restart local v0       #result:Z
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportHarman(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSupportHideSelectRuntime()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 483
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 484
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 485
    const-string v1, "isSupportHideSelectRuntime, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 490
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_hide_select_runtime"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportHtcMiniPlus()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportMoppoFontStore(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 511
    const-string v0, "cn.moppo.fontstore"

    invoke-static {p0, v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportTargetServices(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTabletDevice()Z
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getDeviceType()I

    move-result v0

    .line 184
    .local v0, deviceType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTmousSku()Z
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 369
    .local v0, sku:I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 370
    const/4 v1, 0x1

    .line 373
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVerizonSku()Z
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 383
    .local v0, sku:I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 384
    const/4 v1, 0x1

    .line 387
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVodafoneUKSku()Z
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v0

    .line 393
    .local v0, sku:I
    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 394
    const/4 v1, 0x1

    .line 397
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOffloadSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 546
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 547
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 548
    const-string v1, "isWifiOffloadSupported, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 553
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_Wifioffload"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWifiOnly()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 519
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 520
    sget-boolean v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 521
    const-string v1, "isWifiOnly, unable to get system reader"

    invoke-static {v1}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sLog(Ljava/lang/String;)V

    .line 529
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->sSystemReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "wifi_only"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWorldPhone()Z
    .locals 2

    .prologue
    .line 419
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getRadioType()I

    move-result v0

    .line 421
    .local v0, radioType:I
    const/16 v1, 0xa

    if-eq v1, v0, :cond_0

    const/16 v1, 0x8

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static sLog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 707
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method public static final supportActivities(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 598
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final supportActivities(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 610
    if-nez p0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v1

    .line 616
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
