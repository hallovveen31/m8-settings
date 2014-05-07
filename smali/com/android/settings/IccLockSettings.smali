.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
.implements Lcom/android/settings/EditPinPreference$onCreateDialogListener;


# static fields
.field public static final ACTION_EXCEPTION:I = 0x1

.field public static final ACTION_NOT_ALLOWED:I = 0x2

.field public static final ACTION_OK:I = 0x0

.field private static final CHANGE_ICC_PIN_COMPLETE:I = 0x65

.field private static final CHANGE_PIN_FAIL:Ljava/lang/String; = "ChangePinFail"

.field private static final DIALOG_ERROR:Ljava/lang/String; = "dialogError"

.field private static final DIALOG_PIN:Ljava/lang/String; = "dialogPin"

.field private static final DIALOG_STATE:Ljava/lang/String; = "dialogState"

.field private static final ENABLE_ICC_PIN_COMPLETE:I = 0x64

.field private static final ENABLE_TO_STATE:Ljava/lang/String; = "enableState"

.field private static final ICC_LOCK_MODE:I = 0x1

.field private static final ICC_NEW_MODE:I = 0x3

.field private static final ICC_OLD_MODE:I = 0x2

.field private static final ICC_REENTER_MODE:I = 0x4

.field private static final INVALID_PIN:Ljava/lang/String; = "InvalidPin"

.field private static final LOG_TAG:Ljava/lang/String; = "SimLockSettings"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NEW_PIN:Ljava/lang/String; = " NewPin"

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PIN:Ljava/lang/String; = "OldPin"

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final RETRY_INFO:Ljava/lang/String; = "RetryInfo"

.field private static final SIM_PIN2:Ljava/lang/String; = "sim_pin2"

.field private static final STAT_NONE:I = 0x0

.field private static final STAT_PIN_CHANGE:I = 0x2

.field private static final STAT_PIN_LOCK:I = 0x1


# instance fields
.field private mChangePinFail:Z

.field private mContext:Landroid/content/Context;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInvalidPin:Z

.field private mLimitedDisplayArea:Z

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRetryInfo:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 138
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 163
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 178
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccLockChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method private checkIccSateBeforeDoAction()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1005
    const/4 v1, 0x1

    .line 1006
    .local v1, iccNotOk:Z
    const v3, 0x7f0c04d0

    .line 1007
    .local v3, resId:I
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v7, :cond_0

    .line 1058
    :goto_0
    return v6

    .line 1010
    :cond_0
    iget-object v7, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1011
    .local v0, icc:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_3

    .line 1012
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    .line 1015
    .local v5, state:Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v2, 0x0

    .line 1016
    .local v2, isNoSimCard:Z
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCtSku()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1020
    const-string v7, "gsm.sim.absent"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    .local v4, simType:Ljava/lang/String;
    sget-object v7, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_NO_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual {v7}, Lcom/android/internal/telephony/RILConstants$SimTypes;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1024
    const/4 v2, 0x1

    .line 1025
    const-string v7, "SimLockSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNoSimCard:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local v4           #simType:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v7, v5, :cond_2

    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v2, :cond_6

    .line 1040
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1041
    const v3, 0x7f0c08e4

    .line 1053
    .end local v2           #isNoSimCard:Z
    .end local v5           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1054
    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_4
    move v6, v1

    .line 1058
    goto :goto_0

    .line 1043
    .restart local v2       #isNoSimCard:Z
    .restart local v5       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    const v3, 0x7f0c04d0

    goto :goto_1

    .line 1049
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 221
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/IccLockSettings;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0e2f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 221
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c0e30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private iccLockChanged(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 840
    if-nez p1, :cond_1

    move v1, v2

    .line 843
    .local v1, success:Z
    :goto_0
    if-eqz v1, :cond_3

    .line 844
    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 846
    const/4 v0, 0x0

    .line 856
    .local v0, resId:I
    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-ne v4, v2, :cond_2

    const v0, 0x7f0c057e

    .line 859
    :goto_1
    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 861
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3}, Lcom/android/settings/EditPinPreference;->isEnabled()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eq v3, v4, :cond_0

    .line 862
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 885
    .end local v0           #resId:I
    :cond_0
    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/android/settings/IccLockSettings;->resetDialogState(IZ)V

    .line 892
    return-void

    .end local v1           #success:Z
    :cond_1
    move v1, v3

    .line 840
    goto :goto_0

    .line 856
    .restart local v0       #resId:I
    .restart local v1       #success:Z
    :cond_2
    const v0, 0x7f0c057f

    goto :goto_1

    .line 868
    .end local v0           #resId:I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_0

    .line 872
    invoke-direct {p0, v2, p1}, Lcom/android/settings/IccLockSettings;->showPinErrorDialog(II)V

    goto :goto_2
.end method

.method private iccPinChanged(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 895
    if-nez p1, :cond_0

    .line 901
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/settings/IccLockSettings;->showPinErrorDialog(II)V

    .line 933
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/android/settings/IccLockSettings;->resetDialogState(IZ)V

    .line 940
    return-void

    .line 911
    :cond_0
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c08d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 916
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c08e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 921
    :cond_2
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c08c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 926
    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0e3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static isIccLockEnabled()Z
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 948
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 950
    :cond_0
    const/4 v0, 0x0

    .line 952
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 957
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 958
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 959
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 960
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 961
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 963
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 965
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 966
    return-void
.end method

.method private resetDialogState(IZ)V
    .locals 6
    .parameter "wherefrom"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 970
    iput-object v5, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 971
    iput-object v5, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 972
    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 973
    if-ne p2, v2, :cond_1

    .line 974
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 990
    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 991
    .local v0, icc:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 992
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 993
    .local v1, state:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    .line 995
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 999
    .end local v1           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 1000
    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 1001
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 1002
    return-void

    .line 975
    .end local v0           #icc:Lcom/android/internal/telephony/IccCard;
    :cond_1
    if-ne p1, v2, :cond_2

    .line 978
    iput v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0

    .line 984
    :cond_2
    if-ne p1, v4, :cond_3

    .line 985
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0

    .line 987
    :cond_3
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method private setDialogValues()V
    .locals 8

    .prologue
    const v7, 0x7f0c08c3

    const v6, 0x7f0c0e31

    const v5, 0x7f0c08db

    const v4, 0x7f0c08cd

    const v3, 0x7f0c08bf

    .line 560
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 561
    const-string v0, ""

    .line 562
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 651
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 652
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 672
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v1, :cond_14

    .line 673
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 683
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 684
    return-void

    .line 564
    :pswitch_0
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 570
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 571
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 576
    :cond_4
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 577
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08c1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08c2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 582
    :cond_6
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e32

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0e33

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0e34

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 589
    :pswitch_1
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 590
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 594
    :cond_8
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 595
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 599
    :cond_9
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 600
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 604
    :cond_a
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e35

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 611
    :pswitch_2
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 612
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 616
    :cond_b
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 617
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 621
    :cond_c
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 622
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 626
    :cond_d
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e36

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 632
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 634
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 637
    :cond_e
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 638
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 641
    :cond_f
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 642
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 645
    :cond_10
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 656
    :cond_11
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 657
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 660
    :cond_12
    invoke-static {}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 661
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 665
    :cond_13
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e35

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 678
    :cond_14
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto/16 :goto_1

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 7

    .prologue
    const v1, 0x2040124

    const v2, 0x2040123

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 435
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatus()[I

    move-result-object v3

    aget v0, v3, v6

    .line 440
    .local v0, pinRetry:I
    if-eqz v0, :cond_0

    .line 444
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-ne v3, v5, :cond_6

    .line 446
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_4

    .line 447
    const-string v3, " (%s)"

    new-array v4, v5, [Ljava/lang/Object;

    if-le v0, v5, :cond_3

    :goto_1
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 477
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 479
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 447
    goto :goto_1

    .line 453
    :cond_4
    if-le v0, v5, :cond_5

    :goto_3
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    .line 459
    :cond_6
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 461
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_8

    .line 462
    const-string v3, " (%s)"

    new-array v4, v5, [Ljava/lang/Object;

    if-le v0, v5, :cond_7

    :goto_4
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_4

    .line 468
    :cond_8
    if-le v0, v5, :cond_9

    :goto_5
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_5
.end method

.method private showPinErrorDialog(II)V
    .locals 8
    .parameter "state"
    .parameter "status"

    .prologue
    const v7, 0x7f0c0e39

    const v1, 0x2040124

    const v2, 0x2040123

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 488
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v3, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_0

    .line 496
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatus()[I

    move-result-object v3

    aget v0, v3, v6

    .line 497
    .local v0, pinRetry:I
    if-eqz v0, :cond_0

    .line 501
    const-string v3, ""

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 502
    if-ne p1, v5, :cond_6

    .line 503
    iput v5, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 504
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_4

    .line 505
    const-string v3, " (%s)"

    new-array v4, v5, [Ljava/lang/Object;

    if-le v0, v5, :cond_2

    :goto_1
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 512
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-nez v1, :cond_3

    .line 513
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0a43

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 552
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 554
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 505
    goto :goto_1

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 521
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le v0, v5, :cond_5

    :goto_3
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    .line 528
    :cond_6
    const/4 v3, 0x2

    if-ne p1, v3, :cond_a

    .line 529
    iput-boolean v5, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 530
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 531
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v3, :cond_8

    .line 532
    const-string v3, " (%s)"

    new-array v4, v5, [Ljava/lang/Object;

    if-le v0, v5, :cond_7

    :goto_4
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 538
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 532
    goto :goto_4

    .line 541
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-le v0, v5, :cond_9

    :goto_5
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto :goto_5

    .line 549
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 833
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 835
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 943
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 944
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 945
    return-void
.end method


# virtual methods
.method protected initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V
    .locals 1
    .parameter "actionBarContainer"

    .prologue
    .line 1063
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 1064
    new-instance v0, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {p1, v0}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 229
    const v3, 0x2030069

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->setTheme(I)V

    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 329
    :goto_0
    return-void

    .line 240
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    .line 250
    invoke-static {}, Lcom/android/settings/framework/reflect/com/android/internal/telephony/HtcWrapBuildUtils;->KDDI_WORDING_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    const v3, 0x7f060043

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v1

    .line 254
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 255
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->removeAllViews()V

    .line 256
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 257
    .local v2, mText:Lcom/htc/widget/ActionBarText;
    const v3, 0x7f0c08d6

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 258
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 259
    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 265
    .end local v0           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v1           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v2           #mText:Lcom/htc/widget/ActionBarText;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->initBackUpSettings(Lcom/htc/widget/ActionBarContainer;)V

    .line 269
    const-string v3, "sim_pin"

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/EditPinPreference;

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 270
    const-string v3, "sim_toggle"

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 271
    if-eqz p1, :cond_1

    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 274
    const-string v3, "dialogPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 275
    const-string v3, "dialogError"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 276
    const-string v3, "enableState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 279
    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    .line 296
    :goto_2
    const-string v3, "ChangePinFail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    .line 297
    const-string v3, "InvalidPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 298
    const-string v3, "OldPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 299
    const-string v3, " NewPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 300
    const-string v3, "RetryInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 306
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/EditPinPreference;->setOnCreateDialogListener(Lcom/android/settings/EditPinPreference$onCreateDialogListener;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setPersistent(Z)V

    .line 312
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 315
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mContext:Landroid/content/Context;

    .line 316
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->checkIccSateBeforeDoAction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 319
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 326
    :goto_3
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto/16 :goto_0

    .line 262
    :cond_2
    const v3, 0x7f060042

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 281
    :pswitch_0
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_2

    .line 285
    :pswitch_1
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 286
    const-string v3, "newPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto/16 :goto_2

    .line 323
    :cond_3
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 279
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/view/View;)V
    .locals 9
    .parameter "Dialog"

    .prologue
    const v1, 0x2040123

    const/4 v3, 0x2

    const v8, 0x7f0c04ce

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 761
    if-eqz p1, :cond_3

    .line 764
    iget v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    if-nez v2, :cond_6

    .line 766
    :cond_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatus()[I

    move-result-object v2

    aget v0, v2, v7

    .line 767
    .local v0, pinRetry:I
    iput v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 768
    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v2, :cond_4

    .line 769
    const-string v2, " (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    if-le v0, v6, :cond_1

    const v1, 0x2040124

    :cond_1
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 774
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v6, :cond_2

    .line 775
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 788
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 809
    .end local v0           #pinRetry:I
    :cond_3
    :goto_1
    return-void

    .line 779
    .restart local v0       #pinRetry:I
    :cond_4
    if-le v0, v6, :cond_5

    const v1, 0x2040124

    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 783
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v6, :cond_2

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_0

    .line 793
    .end local v0           #pinRetry:I
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-nez v1, :cond_7

    .line 794
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v6, :cond_3

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 797
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 798
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_1

    .line 801
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    if-ne v1, v6, :cond_3

    .line 802
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 362
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 364
    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v5, 0x7f0c0e3a

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 688
    if-nez p2, :cond_0

    .line 691
    invoke-direct {p0, v3, v1}, Lcom/android/settings/IccLockSettings;->resetDialogState(IZ)V

    .line 757
    :goto_0
    return-void

    .line 701
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 706
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 714
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 718
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    .line 720
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 722
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 725
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 726
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 727
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 728
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 729
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 730
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 733
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 734
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 735
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 736
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 739
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 740
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mLimitedDisplayArea:Z

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    :goto_1
    iput v4, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 748
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 749
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    goto :goto_1

    .line 751
    :cond_3
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 752
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 815
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 817
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 819
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 820
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 821
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 826
    :goto_0
    return v0

    .line 822
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 823
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 338
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-ne v0, v2, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 353
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 356
    return-void

    .line 341
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 382
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 399
    :goto_0
    const-string v0, "ChangePinFail"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mChangePinFail:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 400
    const-string v0, "InvalidPin"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mInvalidPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    const-string v0, "OldPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, " NewPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "RetryInfo"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_1
    return-void

    .line 384
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 382
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 415
    if-eqz p1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 420
    .local v0, shouldCheck:Z
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 430
    .end local v0           #shouldCheck:Z
    :cond_1
    return-void
.end method
