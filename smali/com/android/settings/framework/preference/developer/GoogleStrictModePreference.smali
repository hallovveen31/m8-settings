.class public Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "GoogleStrictModePreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 28
    const-class v0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->TAG:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->initial()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-class v0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->TAG:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->initial()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-class v0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->TAG:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->initial()V

    .line 60
    return-void
.end method

.method private currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    :goto_0
    return v1

    .line 123
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c11ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initial()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->mWindowManager:Landroid/view/IWindowManager;

    .line 65
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->currentStrictModeActiveIndex()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz p2, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 96
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@@@@ current Strict Mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->currentStrictModeActiveIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 85
    :cond_1
    const-string v1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->TAG:Ljava/lang/String;

    const-string v2, " @@@@@ ERROR: Write Strict Mode Visual Options Fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/settings/framework/preference/developer/GoogleStrictModePreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 109
    const/4 v1, 0x0

    goto :goto_1
.end method
