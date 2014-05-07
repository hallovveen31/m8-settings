.class Lcom/android/settings/wifi/AccessPoint;
.super Lcom/htc/preference/HtcPreference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPoint$1;,
        Lcom/android/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field static final EAP_FAST:I = 0x4

.field static final EAP_LEAP:I = 0x3

.field static final EAP_PEAP:I = 0x0

.field static final EAP_TLS:I = 0x1

.field static final EAP_TTLS:I = 0x2

.field static final ENCRYPTION_AES:I = 0x1

.field static final ENCRYPTION_TKIP:I = 0x0

.field private static FAIL_RESULT:I = 0x0

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final MATCH_EXACT:I = 0x3

.field public static final MATCH_NONE:I = 0x0

.field public static final MATCH_STRONG:I = 0x2

.field public static final MATCH_WEAK:I = 0x1

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x5

.field static final SECURITY_WAPI_PSK:I = 0x4

.field static final SECURITY_WEP:I = 0x1

.field private static final STATE_NONE:[I = null

.field private static final STATE_SECURED:[I = null

.field private static SUCCESS_RESULT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"

.field public static final TYPE_SETTINGS:I = 0x0

.field public static final TYPE_SETUP_WIZARD:I = 0x1


# instance fields
.field private MIN_RSSI:I

.field auto_join:Z

.field blocked:Z

.field bssid:Ljava/lang/String;

.field disable:Z

.field eap:I

.field eapol_flags:I

.field enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mCMCCSsid:[Ljava/lang/String;

.field private mCTReadOnlySsid:[Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mFrequency:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mStatus:Landroid/widget/ImageView;

.field private mType:I

.field networkId:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field security:I

.field signIn:I

.field ssid:Ljava/lang/String;

.field wepkeyindex:I

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 57
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    .line 97
    sput v3, Lcom/android/settings/wifi/AccessPoint;->FAIL_RESULT:I

    .line 98
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/wifi/AccessPoint;->SUCCESS_RESULT:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ChinaNet"

    aput-object v1, v0, v2

    const-string v1, "ChinaNet_CW"

    aput-object v1, v0, v3

    const-string v1, "ChinaNet_HomeCW"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CMCC-AUTO"

    aput-object v1, v0, v2

    const-string v1, "CMCC"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCMCCSsid:[Ljava/lang/String;

    .line 64
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->MIN_RSSI:I

    .line 107
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->disable:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 111
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 255
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V
    .locals 5
    .parameter "context"
    .parameter "result"
    .parameter "type"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ChinaNet"

    aput-object v1, v0, v2

    const-string v1, "ChinaNet_CW"

    aput-object v1, v0, v3

    const-string v1, "ChinaNet_HomeCW"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CMCC-AUTO"

    aput-object v1, v0, v2

    const-string v1, "CMCC"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCMCCSsid:[Ljava/lang/String;

    .line 64
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->MIN_RSSI:I

    .line 107
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->disable:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 111
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 259
    if-ne p3, v3, :cond_0

    .line 260
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 263
    :goto_0
    iput p3, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    .line 264
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 266
    return-void

    .line 262
    :cond_0
    const v0, 0x7f0400d1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 5
    .parameter "context"
    .parameter "config"
    .parameter "type"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ChinaNet"

    aput-object v1, v0, v2

    const-string v1, "ChinaNet_CW"

    aput-object v1, v0, v3

    const-string v1, "ChinaNet_HomeCW"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CMCC-AUTO"

    aput-object v1, v0, v2

    const-string v1, "CMCC"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCMCCSsid:[Ljava/lang/String;

    .line 64
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->MIN_RSSI:I

    .line 107
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->disable:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 111
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 244
    if-ne p3, v3, :cond_0

    .line 245
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 248
    :goto_0
    iput p3, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    .line 249
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 251
    return-void

    .line 247
    :cond_0
    const v0, 0x7f0400d1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 5
    .parameter "context"
    .parameter "savedState"
    .parameter "type"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ChinaNet"

    aput-object v1, v0, v2

    const-string v1, "ChinaNet_CW"

    aput-object v1, v0, v3

    const-string v1, "ChinaNet_HomeCW"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "CMCC-AUTO"

    aput-object v1, v0, v2

    const-string v1, "CMCC"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCMCCSsid:[Ljava/lang/String;

    .line 64
    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->MIN_RSSI:I

    .line 107
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->disable:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 111
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 270
    if-ne p3, v3, :cond_3

    .line 271
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 275
    :goto_0
    iput p3, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    .line 276
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 280
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 284
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 285
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 289
    return-void

    .line 273
    :cond_3
    const v0, 0x7f0400d1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private compareCMCCPriority(Lcom/android/settings/wifi/AccessPoint;)I
    .locals 5
    .parameter "other"

    .prologue
    const/4 v3, 0x1

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, grade:I
    const/4 v2, 0x0

    .line 418
    .local v2, otherGrade:I
    const/4 v0, 0x0

    .line 419
    .local v0, compare:I
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->getCMCCGrade(Ljava/lang/String;)I

    move-result v1

    .line 420
    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p1, v4}, Lcom/android/settings/wifi/AccessPoint;->getCMCCGrade(Ljava/lang/String;)I

    move-result v2

    .line 421
    sub-int v0, v2, v1

    .line 423
    if-lt v0, v3, :cond_0

    .line 428
    :goto_0
    return v3

    .line 425
    :cond_0
    if-nez v0, :cond_1

    .line 426
    const/4 v3, 0x0

    goto :goto_0

    .line 428
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private compareCTPriority(Lcom/android/settings/wifi/AccessPoint;)I
    .locals 5
    .parameter "other"

    .prologue
    const/4 v3, 0x1

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, grade:I
    const/4 v2, 0x0

    .line 377
    .local v2, otherGrade:I
    const/4 v0, 0x0

    .line 378
    .local v0, compare:I
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->getCTSSIDGrade(Ljava/lang/String;)I

    move-result v1

    .line 379
    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p1, v4}, Lcom/android/settings/wifi/AccessPoint;->getCTSSIDGrade(Ljava/lang/String;)I

    move-result v2

    .line 380
    sub-int v0, v2, v1

    .line 382
    if-lt v0, v3, :cond_0

    .line 387
    :goto_0
    return v3

    .line 384
    :cond_0
    if-nez v0, :cond_1

    .line 385
    const/4 v3, 0x0

    goto :goto_0

    .line 387
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCMCCGrade(Ljava/lang/String;)I
    .locals 1
    .parameter "ssid"

    .prologue
    .line 433
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 439
    :goto_0
    return v0

    .line 435
    :cond_0
    if-eqz p1, :cond_2

    .line 436
    const-string v0, "CMCC-AUTO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 437
    :cond_1
    const-string v0, "CMCC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 439
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCTSSIDGrade(Ljava/lang/String;)I
    .locals 1
    .parameter "ssid"

    .prologue
    .line 392
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 399
    :goto_0
    return v0

    .line 394
    :cond_0
    if-eqz p1, :cond_3

    .line 395
    const-string v0, "ChinaNet_HomeCW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 396
    :cond_1
    const-string v0, "ChinaNet_CW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 397
    :cond_2
    const-string v0, "ChinaNet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 399
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 228
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 229
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 230
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 231
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 238
    :goto_0
    return-object v2

    .line 232
    :cond_0
    if-eqz v1, :cond_1

    .line 233
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 234
    :cond_1
    if-eqz v0, :cond_2

    .line 235
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 237
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x4

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const/4 v0, 0x5

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const/4 v0, 0x2

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    const/4 v0, 0x3

    goto :goto_0

    .line 189
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v4

    .line 133
    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    const/4 v0, 0x4

    goto :goto_0

    .line 140
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    .line 141
    goto :goto_0

    .line 144
    :cond_5
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v2, :cond_6

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-gt v2, v4, :cond_6

    .line 145
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 147
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isShowEapErrUI(I)Z
    .locals 1
    .parameter "eapVal"

    .prologue
    .line 620
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 622
    :cond_0
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidWepPassword(Ljava/lang/String;)Z
    .locals 4
    .parameter "password"

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 632
    .local v0, retValue:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 633
    :cond_0
    const/4 v0, 0x1

    .line 638
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    .line 639
    const-string v1, "Settings.AccessPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidWepPassword retValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    return v0

    .line 634
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 635
    :cond_4
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 306
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 307
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 309
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 310
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 311
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 312
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->eap:I

    .line 314
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getEapolFlags(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->eapol_flags:I

    .line 315
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->signinfail:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->signIn:I

    .line 317
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 318
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->wepkeyindex:I

    .line 330
    :goto_1
    return-void

    .line 306
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->wepkeyindex:I

    goto :goto_1
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, -0x1

    .line 333
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 334
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 335
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 336
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 337
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 338
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 339
    :cond_0
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 340
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 342
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->eapol_flags:I

    .line 343
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 344
    return-void

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 667
    if-nez p0, :cond_1

    const-string p0, ""

    .line 674
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 669
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 670
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 672
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public checkCMCCSSID()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v1

    .line 407
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCMCCSsid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mCMCCSsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    const/4 v1, 0x1

    goto :goto_0

    .line 407
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public checkCTSSID()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 363
    sget-boolean v2, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-nez v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v1

    .line 364
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 366
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
    const/4 v1, 0x1

    goto :goto_0

    .line 366
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 6
    .parameter "preference"

    .prologue
    const v5, 0x7fffffff

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 446
    instance-of v3, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 449
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 451
    .local v1, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_2

    move v2, v0

    goto :goto_0

    .line 452
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_0

    .line 455
    :cond_3
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-eqz v3, :cond_6

    .line 458
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v3, v4

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_6

    :cond_4
    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->checkCTSSID()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->checkCTSSID()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 459
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->compareCTPriority(Lcom/android/settings/wifi/AccessPoint;)I

    move-result v2

    .line 460
    .local v2, result:I
    const-string v3, "Settings.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C+W] compare result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    .end local v2           #result:I
    :cond_6
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 469
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v3, v4

    if-gtz v3, :cond_7

    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_9

    :cond_7
    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->checkCMCCSSID()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->checkCMCCSSID()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 470
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->compareCMCCPriority(Lcom/android/settings/wifi/AccessPoint;)I

    move-result v2

    .line 472
    .restart local v2       #result:I
    goto :goto_0

    .line 479
    .end local v2           #result:I
    :cond_9
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-eq v3, v5, :cond_a

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v5, :cond_a

    move v2, v0

    goto :goto_0

    .line 480
    :cond_a
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v5, :cond_b

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v5, :cond_0

    .line 483
    :cond_b
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v0, :cond_c

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v0, :cond_c

    move v2, v0

    .line 484
    goto/16 :goto_0

    .line 485
    :cond_c
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v0, :cond_d

    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v0, :cond_0

    .line 489
    :cond_d
    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 490
    .local v0, difference:I
    if-eqz v0, :cond_e

    move v2, v0

    .line 491
    goto/16 :goto_0

    .line 494
    :cond_e
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 499
    instance-of v1, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 500
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 762
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 763
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 769
    :goto_0
    return-void

    .line 766
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 3

    .prologue
    .line 557
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 558
    const/4 v0, -0x1

    .line 560
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mFrequency:I

    invoke-static {v0, v1, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->calculateSignalLevel(III)I

    move-result v0

    goto :goto_0
.end method

.method getRssi()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    return v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 223
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 196
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0c0d82

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0c0d89

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 199
    :pswitch_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 211
    if-eqz p1, :cond_4

    const v1, 0x7f0c0d81

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0c0d7e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0c0d85

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 204
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0c0d7f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0d86

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 207
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0c0d80

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0c0d87

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_4
    const v1, 0x7f0c0d88

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 215
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0c0d7d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0c0d84

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 218
    :pswitch_6
    const v1, 0x7f0c05b6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 220
    :pswitch_7
    const v1, 0x7f0c05b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 223
    :cond_6
    const v1, 0x7f0c0d83

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, result:I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 507
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 508
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 509
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 510
    return v0
.end method

.method public isFirstPriority()Z
    .locals 4

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 654
    .local v0, mgr:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->getMostPreferredNetwork(Landroid/net/wifi/WifiManager;)I

    move-result v1

    .line 655
    .local v1, preferNetwork:I
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_0

    .line 656
    const/4 v2, 0x1

    .line 658
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 584
    iget-object v7, p0, Lcom/android/settings/wifi/AccessPoint;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 585
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->getEapTypeSupportList()[Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, eaplist:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 588
    .local v1, eap:Ljava/lang/String;
    const-string v7, "SIM"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 608
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #eap:Ljava/lang/String;
    .end local v2           #eaplist:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_1
    return v5

    .line 587
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #eap:Ljava/lang/String;
    .restart local v2       #eaplist:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #eap:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 593
    goto :goto_1

    .line 596
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #eaplist:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/AccessPoint;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 597
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->getEapTypeSupportList()[Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2       #eaplist:[Ljava/lang/String;
    move-object v0, v2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 600
    .restart local v1       #eap:Ljava/lang/String;
    const-string v7, "AKA"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #eap:Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 605
    goto :goto_1
.end method

.method public isShowEapErrUI()Z
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 614
    :cond_0
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .parameter "otherNetworkId"
    .parameter "otherBssid"
    .parameter "otherSsid"
    .parameter "otherSecurity"

    .prologue
    const/4 v5, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    .line 777
    if-nez p3, :cond_0

    .line 778
    sget-boolean v6, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v6, :cond_0

    .line 779
    const-string v6, "Settings.AccessPoint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BSSID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SSID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v6, p4, :cond_2

    .line 831
    :cond_1
    :goto_0
    return v4

    .line 793
    :cond_2
    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v6, p1, :cond_4

    move v1, v5

    .line 794
    .local v1, networkIdMatches:Z
    :goto_1
    if-nez v1, :cond_3

    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-lt v6, v9, :cond_3

    if-ge p1, v9, :cond_1

    .line 799
    :cond_3
    if-eqz v1, :cond_5

    if-eq p1, v9, :cond_5

    if-lt p1, v9, :cond_5

    .line 802
    const/4 v4, 0x3

    goto :goto_0

    .end local v1           #networkIdMatches:Z
    :cond_4
    move v1, v4

    .line 793
    goto :goto_1

    .line 807
    .restart local v1       #networkIdMatches:Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v6, :cond_7

    if-eqz p2, :cond_7

    .line 808
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 809
    .local v0, bssidMatches:Z
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 810
    .local v2, otherBssidIsWildcard:Z
    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    .line 812
    const/4 v4, 0x2

    goto :goto_0

    .line 815
    :cond_6
    if-nez v0, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v2, :cond_1

    .line 823
    .end local v0           #bssidMatches:Z
    .end local v2           #otherBssidIsWildcard:Z
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 824
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 825
    .local v3, ssidMatches:Z
    if-eqz v3, :cond_1

    move v4, v5

    .line 827
    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 350
    const v1, 0x7f0900b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 351
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 352
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 355
    const v1, 0x7f02023b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method protected refresh()V
    .locals 8

    .prologue
    const v7, 0x7f0c0b30

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 683
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 686
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_0

    .line 687
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 749
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_c

    .line 750
    iput-boolean v5, p0, Lcom/android/settings/wifi/AccessPoint;->disable:Z

    .line 754
    :goto_1
    return-void

    .line 688
    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1

    .line 689
    const v3, 0x7f0c0d78

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 690
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_3

    .line 691
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 702
    :pswitch_0
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->signIn:I

    sget v4, Lcom/android/settings/wifi/AccessPoint;->FAIL_RESULT:I

    if-ne v3, v4, :cond_2

    .line 703
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 693
    :pswitch_1
    const v3, 0x7f0c0d77

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 697
    :pswitch_2
    const v3, 0x7f0c0d76

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 705
    :cond_2
    const v3, 0x7f0c0d75

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 710
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_9

    .line 713
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->blocked:Z

    if-eqz v3, :cond_7

    .line 714
    const v3, 0x7f0c07e9

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_4
    :goto_2
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_5

    .line 731
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 732
    const v3, 0x7f0c0d7b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_3
    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_6

    .line 740
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 741
    const v3, 0x7f0c0d79

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_6
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 717
    :cond_7
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->signIn:I

    sget v4, Lcom/android/settings/wifi/AccessPoint;->FAIL_RESULT:I

    if-ne v3, v4, :cond_8

    .line 718
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 720
    :cond_8
    const v3, 0x7f0c0d74

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 724
    :cond_9
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->blocked:Z

    if-eqz v3, :cond_4

    .line 725
    const v3, 0x7f0c07ea

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 734
    :cond_a
    const v3, 0x7f0c0d7c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_3

    .line 743
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_b
    const v3, 0x7f0c0d7a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 752
    .end local v2           #summary:Ljava/lang/StringBuilder;
    :cond_c
    iput-boolean v6, p0, Lcom/android/settings/wifi/AccessPoint;->disable:Z

    goto/16 :goto_1

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 292
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 294
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method public setBlocked(Z)V
    .locals 0
    .parameter "blocked"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPoint;->blocked:Z

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 303
    return-void
.end method

.method public setFirstPriority()V
    .locals 3

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 663
    .local v0, mgr:Landroid/net/wifi/WifiManager;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setMostPreferredNetwork(Landroid/net/wifi/WifiManager;I)Z

    .line 664
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, reorder:Z
    if-eqz p1, :cond_4

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 537
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 539
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->MIN_RSSI:I

    if-eq v1, v2, :cond_0

    .line 540
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 542
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 543
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 551
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 554
    :cond_2
    return-void

    .line 537
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 545
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    .line 546
    const/4 v0, 0x1

    .line 547
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 548
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 515
    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mFrequency:I

    .line 516
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 518
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 524
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 525
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 528
    const/4 v1, 0x1

    .line 530
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
