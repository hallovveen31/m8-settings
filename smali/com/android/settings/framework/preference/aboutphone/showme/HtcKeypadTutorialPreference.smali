.class public Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;
.super Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;
.source "HtcKeypadTutorialPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CLS_CIME_TUTORIAL:Ljava/lang/String; = "com.htc.android.cime.tutorial.RegionalCorrection"

.field private static final CLS_HTCIME_TUTORIAL:Ljava/lang/String; = "com.htc.sense.ime.tutorial.RegionalCorrection"

.field public static final KEY:Ljava/lang/String; = "keypad_tutorial"

.field private static final PKG_CIME:Ljava/lang/String; = "com.htc.android.cime"

.field private static final PKG_HTCIME:Ljava/lang/String; = "com.htc.sense.ime"

.field private static final SRV_CIME:Ljava/lang/String; = "com.htc.android.cime/.HTCIMEService"

.field private static final SRV_HTCIME:Ljava/lang/String; = "com.htc.sense.ime/.HTCIMEService"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/aboutphone/showme/VzwHelpBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, preferIME:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 92
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.htc.sense.ime/.HTCIMEService"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 82
    const-string v2, "com.htc.sense.ime"

    const-string v3, "com.htc.sense.ime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_1
    const-string v3, "com.htc.android.cime/.HTCIMEService"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 84
    const-string v2, "com.htc.android.cime"

    const-string v3, "com.htc.android.cime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 89
    goto :goto_0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "keypad_tutorial"

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcKeypadTutorialPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f0c01a7

    return v0
.end method

.method protected getLaunchingTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "USERMAN"

    return-object v0
.end method
