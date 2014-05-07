.class public Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;
.super Ljava/lang/Object;
.source "HtcTestFeatureFlags.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sSupportDialingSecretCode:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->TAG:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->DEBUG:Z

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->sSupportDialingSecretCode:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static final supportDialingSecretCode(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 62
    sget-object v3, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->sSupportDialingSecretCode:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 63
    sget-object v3, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->sSupportDialingSecretCode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 91
    :goto_0
    return v2

    .line 66
    :cond_0
    const-string v0, "support_dialing_secret_code"

    .line 71
    .local v0, SIE_KEY:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isKddiSku()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 80
    .local v1, defaultValue:Z
    :goto_1
    const-string v3, "support_dialing_secret_code"

    invoke-static {p0, v3, v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 83
    .local v2, support:Z
    sget-boolean v3, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SIE][Settings_properties][support_dialing_secret_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "support_dialing_secret_code"

    invoke-static {p0, v4}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->log(Ljava/lang/String;)V

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Settings/Test/Testing/phone|battery|usage|Wi-Fi][support="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->log(Ljava/lang/String;)V

    .line 90
    :cond_2
    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v3, Lcom/android/settings/framework/flag/feature/HtcTestFeatureFlags;->sSupportDialingSecretCode:Ljava/lang/Boolean;

    goto :goto_0

    .line 76
    .end local v1           #defaultValue:Z
    .end local v2           #support:Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1       #defaultValue:Z
    goto :goto_1
.end method
