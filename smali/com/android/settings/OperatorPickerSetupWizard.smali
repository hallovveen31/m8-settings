.class public Lcom/android/settings/OperatorPickerSetupWizard;
.super Lcom/android/settings/OperatorPicker;
.source "OperatorPickerSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;,
        Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;,
        Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final INTENT_STRING_NOT_FINISH_WHEN_BACK_KEY_PRESSED:Ljava/lang/String; = "SelfFinishBackKeyPressed"

.field private static final MSG_ID_ANIMATION_DONE:I = 0x190

.field public static final RESULT_BACK_KEY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "OOBE_OperatorPickerSetupWizard"


# instance fields
.field private initialPosition:I

.field private mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppProgress:Landroid/widget/ProgressBar;

.field private mBackItemView:Lcom/htc/widget/ActionBarItemView;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mLaunchByIcon:Z

.field private mMvnoOperatorName:Ljava/lang/String;

.field private mNextItemView:Lcom/htc/widget/ActionBarItemView;

.field private mProgressBarMaxNumber:I

.field private mProgressBarNumber:I

.field private mbBackFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/OperatorPicker;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    iput-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    new-instance v0, Lcom/android/settings/OperatorPickerSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings/OperatorPickerSetupWizard$1;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OperatorPickerSetupWizard;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/OperatorPickerSetupWizard;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    return p1
.end method

.method private isCalledByMainActivity()Z
    .locals 1

    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v0

    return v0
.end method

.method private setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 3

    const-string v0, "OOBE_OperatorPickerSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressBar  ProgressBarNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ProgressBarMaxNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private setupPhoneLayout(Z)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x8

    const v6, 0x7f090224

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooter;

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcFooter;->ReverseLandScapeSequence(Z)V

    if-eqz p1, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f09022c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    if-eqz v2, :cond_1

    iget-boolean v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isCalledByMainActivity()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const v6, 0x7f09022d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    if-eqz v3, :cond_2

    new-instance v6, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;

    invoke-direct {v6, p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v6}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    new-instance v6, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v6, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const/4 v6, 0x3

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    array-length v7, v0

    if-ge v6, v7, :cond_4

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget v5, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    :cond_4
    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1, v6}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    :cond_5
    return-void

    :cond_6
    new-instance v6, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;

    invoke-direct {v6, p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :array_0
    .array-data 0x4
        0xc3t 0x5t 0xct 0x7ft
        0xc4t 0x5t 0xct 0x7ft
        0xc5t 0x5t 0xct 0x7ft
    .end array-data
.end method

.method private setupTabletLayout(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v3, 0x7f0c0892

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v3, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isCalledByMainActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v3, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f09022b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showEmergencyDial()V
    .locals 7

    const/high16 v6, 0x1080

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemLayout()I
    .locals 1

    const v0, 0x7f040026

    return v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0400fb

    return v0
.end method

.method protected getOperatorAdapter()Landroid/widget/ListAdapter;
    .locals 2

    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->getOperatorAdapter()Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/android/settings/OperatorPicker;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getLayout()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    const v5, 0x1020002

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getOperatorAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "SelfFinishBackKeyPressed"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    const-string v5, "LaunchByIcon"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    const-string v5, "OOBE_OperatorPickerSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLaunchByIcon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mbBackFinish = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ProgressBarNumber"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    const-string v5, "ProgressBarMaxNumber"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    :cond_0
    iget v5, p0, Lcom/android/settings/OperatorPicker;->mType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    const-string v5, "sub_mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    :cond_1
    :goto_0
    const-string v5, "OOBE_OperatorPickerSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MvnoOperator:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " slot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    if-eqz v5, :cond_5

    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/settings/OperatorPicker;->mType:I

    if-ne v5, v11, :cond_4

    const-string v5, "cdma_mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v5, "mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/OperatorPicker;->mSlot:I

    if-ne v5, v11, :cond_1

    const-string v5, "sub_mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    if-eq v5, v10, :cond_6

    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    iget v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    invoke-virtual {v5, v6}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->setSelect(I)V

    :cond_6
    new-instance v5, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    const v5, 0x7f09022a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isCalledByMainActivity()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->setProgressBar(Landroid/widget/ProgressBar;)V

    :goto_2
    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, v9}, Lcom/android/settings/OperatorPickerSetupWizard;->setupTabletLayout(Z)V

    invoke-direct {p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard;->setupPhoneLayout(Z)V

    :goto_3
    return-void

    :cond_7
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v9}, Lcom/android/settings/OperatorPickerSetupWizard;->setupPhoneLayout(Z)V

    invoke-direct {p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard;->setupTabletLayout(Z)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "OOBE_OperatorPickerSetupWizard"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const-string v2, "OOBE_OperatorPickerSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    if-eqz v2, :cond_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->showEmergencyDial()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "OOBE_OperatorPickerSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OperatorPicker;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->setSelect(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->invalidate()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    return-void
.end method

.method public onResume()V
    .locals 4

    const/16 v3, 0x190

    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x96

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
