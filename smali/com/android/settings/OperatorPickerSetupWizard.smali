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

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/OperatorPicker;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    .line 47
    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    .line 49
    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    .line 50
    iput v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    .line 52
    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 53
    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 54
    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    .line 55
    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    .line 56
    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    .line 63
    new-instance v0, Lcom/android/settings/OperatorPickerSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings/OperatorPickerSetupWizard$1;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mHandler:Landroid/os/Handler;

    .line 396
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OperatorPickerSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/OperatorPickerSetupWizard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    return p1
.end method

.method private isCalledByMainActivity()Z
    .locals 1

    .prologue
    .line 176
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

    .prologue
    .line 256
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v0

    return v0
.end method

.method private setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 3
    .parameter "progressBar"

    .prologue
    .line 261
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

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 267
    iget v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 269
    :cond_0
    return-void
.end method

.method private setupPhoneLayout(Z)V
    .locals 9
    .parameter "isVisible"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 181
    const v6, 0x7f090224

    invoke-virtual {p0, v6}, Lcom/android/settings/OperatorPickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcFooter;

    .line 182
    .local v4, footer:Lcom/htc/widget/HtcFooter;
    if-eqz v4, :cond_2

    .line 183
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcFooter;->ReverseLandScapeSequence(Z)V

    .line 185
    if-eqz p1, :cond_7

    .line 186
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 189
    const v6, 0x7f09022c

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooterButton;

    .line 190
    .local v2, btnBack:Lcom/htc/widget/HtcFooterButton;
    if-eqz v2, :cond_1

    .line 191
    iget-boolean v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isCalledByMainActivity()Z

    move-result v6

    if-nez v6, :cond_6

    .line 192
    :cond_0
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 199
    :cond_1
    :goto_0
    const v6, 0x7f09022d

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    .line 200
    .local v3, btnNext:Lcom/htc/widget/HtcFooterButton;
    if-eqz v3, :cond_2

    .line 201
    new-instance v6, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;

    invoke-direct {v6, p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    .end local v2           #btnBack:Lcom/htc/widget/HtcFooterButton;
    .end local v3           #btnNext:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    .line 209
    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v6}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    .line 211
    .local v1, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v6, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v6, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 212
    const/4 v6, 0x3

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 213
    .local v0, RES_ID:[I
    const/4 v5, 0x0

    .line 214
    .local v5, idx:I
    iget v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mSlot:I

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mSlot:I

    array-length v7, v0

    if-ge v6, v7, :cond_4

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/htc/telephony/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    :cond_3
    iget v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mSlot:I

    .line 217
    :cond_4
    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 218
    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1, v6}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 220
    .end local v0           #RES_ID:[I
    .end local v1           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v5           #idx:I
    :cond_5
    return-void

    .line 194
    .restart local v2       #btnBack:Lcom/htc/widget/HtcFooterButton;
    :cond_6
    new-instance v6, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;

    invoke-direct {v6, p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 204
    .end local v2           #btnBack:Lcom/htc/widget/HtcFooterButton;
    :cond_7
    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_1

    .line 212
    :array_0
    .array-data 0x4
        0xc3t 0x5t 0xct 0x7ft
        0xc4t 0x5t 0xct 0x7ft
        0xc5t 0x5t 0xct 0x7ft
    .end array-data
.end method

.method private setupTabletLayout(Z)V
    .locals 5
    .parameter "isVisible"

    .prologue
    const/4 v4, 0x0

    .line 224
    if-eqz p1, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 228
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v2, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 229
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v3, 0x7f0c0892

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 230
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 232
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    .line 235
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v3, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mNextItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 239
    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isCalledByMainActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    new-instance v2, Lcom/htc/widget/ActionBarItemView;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarItemView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    .line 242
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    new-instance v3, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/OperatorPickerSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mBackItemView:Lcom/htc/widget/ActionBarItemView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addRightView(Landroid/view/View;)V

    .line 253
    .end local v0           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const v2, 0x7f09022b

    invoke-virtual {p0, v2}, Lcom/android/settings/OperatorPickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 249
    .local v1, separator:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 250
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 371
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/OperatorPickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 372
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 373
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 374
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v2}, Lcom/android/settings/OperatorPickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 385
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 382
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v1}, Lcom/android/settings/OperatorPickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getItemLayout()I
    .locals 1

    .prologue
    .line 278
    const v0, 0x7f040026

    return v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 273
    const v0, 0x7f0400fb

    return v0
.end method

.method protected getOperatorAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->getOperatorAdapter()Landroid/widget/ListAdapter;

    .line 295
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 76
    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->requestWindowFeature(I)Z

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/OperatorPicker;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getLayout()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->setContentView(I)V

    .line 82
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 83
    .local v4, vg:Landroid/view/ViewGroup;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcOverlapLayout;

    .line 84
    .local v3, overlay:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    .line 85
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getOperatorAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 90
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 91
    const-string v5, "SelfFinishBackKeyPressed"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    .line 92
    const-string v5, "LaunchByIcon"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    .line 93
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

    .line 96
    const-string v5, "ProgressBarNumber"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarNumber:I

    .line 97
    const-string v5, "ProgressBarMaxNumber"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mProgressBarMaxNumber:I

    .line 100
    :cond_0
    iget v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 101
    const-string v5, "sub_mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    .line 110
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

    iget v7, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mSlot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, operator:Ljava/lang/String;
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_5

    .line 115
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    .line 116
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    iput v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    .line 114
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0           #i:I
    .end local v2           #operator:Ljava/lang/String;
    :cond_3
    iget v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mType:I

    if-ne v5, v11, :cond_4

    .line 103
    const-string v5, "cdma_mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_4
    const-string v5, "mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    .line 106
    iget v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mSlot:I

    if-ne v5, v11, :cond_1

    .line 107
    const-string v5, "sub_mvno_operator"

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    goto :goto_0

    .line 123
    .restart local v2       #operator:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    if-eq v5, v10, :cond_6

    .line 124
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    iget v6, p0, Lcom/android/settings/OperatorPickerSetupWizard;->initialPosition:I

    invoke-virtual {v5, v6}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->setSelect(I)V

    .line 126
    :cond_6
    new-instance v5, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 128
    const v5, 0x7f09022a

    invoke-virtual {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    .line 129
    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isCalledByMainActivity()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 130
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0, v5}, Lcom/android/settings/OperatorPickerSetupWizard;->setProgressBar(Landroid/widget/ProgressBar;)V

    .line 135
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 136
    invoke-direct {p0, v9}, Lcom/android/settings/OperatorPickerSetupWizard;->setupTabletLayout(Z)V

    .line 137
    invoke-direct {p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard;->setupPhoneLayout(Z)V

    .line 142
    :goto_3
    return-void

    .line 132
    :cond_7
    iget-object v5, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAppProgress:Landroid/widget/ProgressBar;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 139
    :cond_8
    invoke-direct {p0, v9}, Lcom/android/settings/OperatorPickerSetupWizard;->setupPhoneLayout(Z)V

    .line 140
    invoke-direct {p0, v8}, Lcom/android/settings/OperatorPickerSetupWizard;->setupTabletLayout(Z)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->onDestroy()V

    .line 168
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 171
    const-string v1, "OOBE_OperatorPickerSetupWizard"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 409
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

    .line 411
    sparse-switch p1, :sswitch_data_0

    .line 433
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 413
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    if-nez v2, :cond_0

    .line 414
    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mbBackFinish:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mLaunchByIcon:Z

    if-eqz v2, :cond_0

    .line 416
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/OperatorPickerSetupWizard;->setResult(I)V

    .line 417
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 426
    :sswitch_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/OperatorPickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 427
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 428
    invoke-direct {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->showEmergencyDial()V

    goto :goto_0

    .line 431
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/OperatorPicker;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 411
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
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mMvnoOperatorName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    const-string v0, "OOBE_OperatorPickerSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected operator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mOperators:[Ljava/lang/String;

    long-to-int v3, p4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mAdapter:Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/OperatorPickerSetupWizard$MyArrayAdapter;->setSelect(I)V

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->invalidate()V

    .line 289
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->onPause()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x190

    .line 147
    invoke-super {p0}, Lcom/android/settings/OperatorPicker;->onResume()V

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/OperatorPickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x96

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    :cond_0
    return-void
.end method
