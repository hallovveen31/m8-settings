.class public Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;
.super Lcom/htc/widget/setupwizard/HtcWizardActivity;
.source "HtcMiniMainActivity.java"


# static fields
.field private static final ACTIVITY_ID:[I = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEFAULT_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HtcMiniMainActivity"

.field private static mActivityList:[Ljava/lang/String;


# instance fields
.field private mBackToPrevious:Z

.field private mIsFirstTransition:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mPageSize:I

.field private mPrevRequestCode:I

.field private mbBack:Z

.field private mnCurStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->DEBUG:Z

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.bluetooth.htcmini.HtcMiniSetupPage1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.bluetooth.htcmini.HtcMiniSetupPage2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mActivityList:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->ACTIVITY_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;-><init>()V

    sget-object v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mActivityList:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPageSize:I

    iput v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    iput v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPrevRequestCode:I

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mbBack:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mIsFirstTransition:Z

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mBackToPrevious:Z

    return-void
.end method

.method private executeCurrentActivity()V
    .locals 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mIsFirstTransition:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    if-lez v4, :cond_2

    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mIsFirstTransition:Z

    if-eqz v4, :cond_1

    iput-boolean v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mIsFirstTransition:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mbBack:Z

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->getAnimationOptions(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v2

    :cond_2
    iget v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    iget v5, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPageSize:I

    if-ge v4, v5, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    sget-object v4, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mActivityList:[Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->ACTIVITY_ID:[I

    iget v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    aget v3, v3, v4

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_3
    const-string v4, "HtcMiniMainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!! Index out of bound: mnCurStep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSetupOption(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v0, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->startHtcMiniSettings(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public static getAnimationOptions(Landroid/content/Context;Z)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x7f05

    const v1, 0x7f050003

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f050001

    const v1, 0x7f050002

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private startHtcMiniSettings(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniSettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "auto_connect"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected nextActivity(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    if-nez p1, :cond_1

    move v2, v0

    :goto_0
    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mBackToPrevious:Z

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    :cond_0
    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPageSize:I

    if-ge v2, v3, :cond_4

    invoke-direct {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->executeCurrentActivity()V

    :goto_1
    monitor-exit p0

    :goto_2
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    if-gez v2, :cond_0

    sget-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "HtcMiniMainActivity"

    const-string v2, "press back key and reach to first page"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    sget-boolean v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "HtcMiniMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnCurStep = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mActivityList length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPageSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {p0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniUtils;->getSetupOption(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_6

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->startHtcMiniSettings(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: requestCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x2ee5

    if-ne p2, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->startHtcMiniSettings(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPrevRequestCode:I

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcMiniMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip dual page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPrevRequestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mPrevRequestCode:I

    if-ne p2, v5, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mbBack:Z

    if-nez p2, :cond_5

    const-string v0, "HtcMiniMainActivity"

    const-string v2, "Activity RESULT_CANCELED"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->nextActivity(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    if-ne v5, p2, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->nextActivity(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    const-string v2, "HtcMiniMainActivity"

    const-string v3, "Bluetooth is not supported on this device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "start"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-boolean v2, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcMiniMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate with extra start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->startHtcMiniSettings(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->startTrackingMini(Z)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideProgress(Z)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideBackBtn(Z)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideNextBtn(Z)V

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->nextActivity(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->startTrackingMini(Z)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4

    sget-boolean v1, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcMiniMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForResult nRequestCode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mnCurStep == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mnCurStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HtcMiniMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException, nRequestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->mBackToPrevious:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/htcmini/HtcMiniMainActivity;->nextActivity(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
