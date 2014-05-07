.class public Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;
.super Lcom/htc/widget/setupwizard/HtcWizardActivity;
.source "HtcBluetoothTetherWizard.java"


# static fields
.field private static final ACTIVITY_ID:[I = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEFAULT_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HtcBluetoothTetherWizard"

.field private static mActivityList:[Ljava/lang/String;


# instance fields
.field private mBackToPrevious:Z

.field private mIsFirstTransition:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mPageSize:I

.field private mPrevRequestCode:I

.field private mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

.field private mbBack:Z

.field private mnCurStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 22
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->DEBUG:Z

    .line 26
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.bluetooth.HtcBluetoothTetherPage1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.bluetooth.HtcBluetoothTetherPage2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.bluetooth.HtcBluetoothTetherPage3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mActivityList:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->ACTIVITY_ID:[I

    return-void

    :array_0
    .array-data 0x4
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;-><init>()V

    .line 33
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mActivityList:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPageSize:I

    .line 36
    iput v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    .line 38
    iput v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPrevRequestCode:I

    .line 41
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mbBack:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mIsFirstTransition:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mBackToPrevious:Z

    return-void
.end method

.method private executeCurrentActivity()V
    .locals 5

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 76
    .local v1, options:Landroid/os/Bundle;
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mIsFirstTransition:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    if-lez v2, :cond_2

    .line 77
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mIsFirstTransition:Z

    if-eqz v2, :cond_1

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mIsFirstTransition:Z

    .line 80
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mbBack:Z

    invoke-static {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->getAnimationOptions(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 84
    :cond_2
    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    iget v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPageSize:I

    if-ge v2, v3, :cond_3

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mActivityList:[Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    sget-object v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->ACTIVITY_ID:[I

    iget v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    aget v2, v2, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 92
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 89
    :cond_3
    const-string v2, "HtcBluetoothTetherWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! Index out of bound: mnCurStep = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->finish()V

    goto :goto_0
.end method

.method public static getAnimationOptions(Landroid/content/Context;Z)Landroid/os/Bundle;
    .locals 2
    .parameter "context"
    .parameter "bBack"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    const/high16 v0, 0x7f05

    const v1, 0x7f050003

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 171
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


# virtual methods
.method protected nextActivity(Z)V
    .locals 3
    .parameter "bNext"

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mBackToPrevious:Z

    .line 145
    if-eqz p1, :cond_2

    .line 146
    iget v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    .line 156
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    iget v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPageSize:I

    if-ge v0, v1, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->executeCurrentActivity()V

    .line 163
    :goto_1
    monitor-exit p0

    .line 164
    :goto_2
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    .line 149
    iget v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    if-gez v0, :cond_0

    .line 150
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HtcBluetoothTetherWizard"

    const-string v1, "press back key and reach to first page"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->finish()V

    .line 152
    monitor-exit p0

    goto :goto_2

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_4
    :try_start_1
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "HtcBluetoothTetherWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mnCurStep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mActivityList length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcBluetoothTetherWizard"

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

    .line 110
    :cond_0
    const/16 v0, 0x2ee5

    if-ne p2, v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->finish()V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    iget v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPrevRequestCode:I

    if-ne p1, v0, :cond_3

    .line 117
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcBluetoothTetherWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip dual page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPrevRequestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_3
    iput p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mPrevRequestCode:I

    .line 123
    if-ne p2, v5, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mbBack:Z

    .line 125
    if-nez p2, :cond_5

    .line 126
    const-string v0, "HtcBluetoothTetherWizard"

    const-string v2, "Activity RESULT_CANCELED"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->nextActivity(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 123
    goto :goto_1

    .line 133
    :cond_5
    if-ne v5, p2, :cond_6

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->nextActivity(Z)V

    goto :goto_0

    .line 136
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->nextActivity(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 52
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "HtcBluetoothTetherWizard"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->finish()V

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->getInstance()Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->SetContext(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->Init()V

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->hideProgress(Z)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->hideBackBtn(Z)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->hideNextBtn(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->nextActivity(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mTetherUtils:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->Release()V

    .line 70
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "intent"
    .parameter "nRequestCode"
    .parameter "options"

    .prologue
    .line 96
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcBluetoothTetherWizard"

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

    iget v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mnCurStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "HtcBluetoothTetherWizard"

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

    .line 102
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->mBackToPrevious:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherWizard;->nextActivity(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
