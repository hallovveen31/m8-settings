.class public Lcom/android/settings/framework/app/HtcActivityManager;
.super Ljava/lang/Object;
.source "HtcActivityManager.java"


# static fields
.field static ENABLE_GUEST_MODE:Z

.field static sSupportGuestMode:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/app/HtcActivityManager;->ENABLE_GUEST_MODE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityManager;->sSupportGuestMode:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyGuestMode(Landroid/app/Activity;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/android/settings/framework/app/HtcActivityManager;->ENABLE_GUEST_MODE:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lcom/android/settings/framework/app/HtcActivityManager;->sSupportGuestMode:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/android/settings/framework/flag/feature/HtcPrivacyFeatureFlags;->supportGuestMode(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/settings/framework/app/HtcActivityManager;->sSupportGuestMode:Ljava/lang/Boolean;

    :cond_2
    sget-object v3, Lcom/android/settings/framework/app/HtcActivityManager;->sSupportGuestMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HtcIfActivityManager;

    invoke-interface {v0}, Landroid/app/HtcIfActivityManager;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const v1, 0x7f0c01b6

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static getCurrentTaskBaseActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static isInSettingsTask(Landroid/content/Context;)Z
    .locals 3
    .annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest;
        value = {
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "72 (ms)"
                description = "from OOBE <BR>"
                device = "DLX Sense50"
                round = 0x1L
                totalTime = "72 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "15 (ms)"
                description = "from Settings <BR>"
                device = "DLX Sense50"
                round = 0x1L
                totalTime = "15 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.63 (ms)"
                description = "from OOBE <BR>"
                device = "DLX Sense50"
                round = 0xc350L
                totalTime = "31557 (ms)"
            .end subannotation,
            .subannotation Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceTest$HtcUnitTest;
                averageTime = "0.49 (ms)"
                description = "from Settings <BR>"
                device = "DLX Sense50"
                round = 0xc350L
                totalTime = "24323 (ms)"
            .end subannotation
        }
    .end annotation

    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityManager;->getCurrentTaskBaseActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
