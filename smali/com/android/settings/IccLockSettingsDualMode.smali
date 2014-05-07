.class public Lcom/android/settings/IccLockSettingsDualMode;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "IccLockSettingsDualMode.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
.implements Lcom/android/settings/EditPinPreference$onCreateDialogListener;


# static fields
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

.field private static final ICC_UNLOCK_ICC_MODE:I = 0x5

.field private static final INVALID_PIN:Ljava/lang/String; = "InvalidPin"

.field private static final LOG_TAG:Ljava/lang/String; = "IccLockSettingsDualMode"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final NEW_PIN:Ljava/lang/String; = " NewPin"

.field private static final NEW_PINCODE:Ljava/lang/String; = "newPinCode"

.field private static final OFF_MODE:I = 0x0

.field private static final OLD_PIN:Ljava/lang/String; = "OldPin"

.field private static final OLD_PINCODE:Ljava/lang/String; = "oldPinCode"

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phoneType"

.field private static final PIN_DIALOG:Ljava/lang/String; = "sim_pin"

.field private static final PIN_TOGGLE:Ljava/lang/String; = "sim_toggle"

.field private static final RETRY_INFO:Ljava/lang/String; = "RetryInfo"

.field private static final SIM_PIN2:Ljava/lang/String; = "sim_pin2"

.field private static final STAT_NONE:I = 0x0

.field private static final STAT_PIN_CHANGE:I = 0x2

.field private static final STAT_PIN_LOCK:I = 0x1

.field private static final STAT_UNLOCK_PIN:I = 0x3

.field private static final UNLOCKPIN_TOGGLE:Ljava/lang/String; = "unlockpin_toggle"

.field private static final UNLOCK_ICC_PIN_COMPLETE:I = 0x66

.field private static mPhoneType:I


# instance fields
.field private mChangePinFail:Z

.field private mContext:Landroid/content/Context;

.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIccCardLock:Z

.field private mIccType:I

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

.field private mUnlockPinToggle:Lcom/htc/preference/HtcPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    new-instance v0, Lcom/android/settings/IccLockSettingsDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettingsDualMode$1;-><init>(Lcom/android/settings/IccLockSettingsDualMode;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/IccLockSettingsDualMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettingsDualMode$2;-><init>(Lcom/android/settings/IccLockSettingsDualMode;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettingsDualMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettingsDualMode;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettingsDualMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettingsDualMode;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/IccLockSettingsDualMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettingsDualMode;->unLockIccPinChanged(Z)V

    return-void
.end method

.method private checkIccSateBeforeDoAction()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0c04d0

    iget-object v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v6, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    const-string v5, "IccLockSettingsDualMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "icc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    const-string v5, "IccLockSettingsDualMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v3, :cond_4

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const v2, 0x7f0c04cf

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_2
    const-string v4, "IccLockSettingsDualMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccNotOk = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    goto :goto_0

    :cond_3
    const v2, 0x7f0c04d0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/IccLockSettingsDualMode;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0e2f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x7f0c0e30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private iccLockChanged(Z)V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "IccLockSettingsDualMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccLockChanged(), success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    const/4 v1, 0x0

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-ne v2, v5, :cond_1

    const v1, 0x7f0c057c

    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    invoke-direct {p0, v5, p1}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    return-void

    :cond_1
    const v1, 0x7f0c057d

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-ne v2, v5, :cond_3

    const v1, 0x7f0c057e

    :goto_2
    goto :goto_0

    :cond_3
    const v1, 0x7f0c057f

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_5

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_6

    invoke-direct {p0, v5}, Lcom/android/settings/IccLockSettingsDualMode;->showPinErrorDialog(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v2, "IccLockSettingsDualMode"

    const-string v3, "card or cardstae is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private iccPinChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const-string v0, "IccLockSettingsDualMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccPinChanged, success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->showPinErrorDialog(I)V

    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    return-void

    :cond_0
    sget v0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c08d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c0e3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static isIccLockEnabled()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "IccLockSettingsDualMode"

    const-string v1, "reasonablePin false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    iput-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    iput v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    return-void
.end method

.method private resetDialogState(IZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "IccLockSettingsDualMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetDialogState icc set mDialogState. wherefrom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne p2, v6, :cond_1

    iput v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq p1, v8, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iput v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    return-void

    :cond_1
    if-ne p1, v8, :cond_2

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0

    :cond_2
    if-ne p1, v6, :cond_3

    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0

    :cond_3
    if-ne p1, v7, :cond_4

    iput v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0
.end method

.method private setDialogValues()V
    .locals 8

    const v7, 0x7f0c0e35

    const v6, 0x7f0c08d1

    const v5, 0x7f0c0e31

    const v4, 0x7f0c08cd

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, ""

    iget v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e32

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0e33

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0e34

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e36

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 9

    const v2, 0x2040124

    const v3, 0x2040123

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatusExt(I)[I

    move-result-object v4

    aget v1, v4, v8

    const-string v4, "IccLockSettingsDualMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pinRetry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-ne v4, v7, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_4

    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_3

    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->showPinDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IccLockSettingsDualMode"

    const-string v3, "showPinDialog failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    if-le v1, v7, :cond_5

    :goto_3
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_8

    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_7

    :goto_4
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    if-le v1, v7, :cond_9

    :goto_5
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_5
.end method

.method private showPinErrorDialog(I)V
    .locals 10

    const v9, 0x7f0c0e39

    const v2, 0x2040124

    const v3, 0x2040123

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "IccLockSettingsDualMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPinErrorDialog, mDialogState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatusExt(I)[I

    move-result-object v4

    aget v1, v4, v8

    if-eqz v1, :cond_0

    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    if-ne p1, v7, :cond_5

    iput v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_3

    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_2

    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->showPinDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IccLockSettingsDualMode"

    const-string v3, "showPinDialog failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-le v1, v7, :cond_4

    :goto_3
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_9

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_7

    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_6

    :goto_4
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-le v1, v7, :cond_8

    :goto_5
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    const/4 v4, 0x2

    if-ne p1, v4, :cond_d

    iput-boolean v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_b

    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_a

    :goto_6
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_a
    move v2, v3

    goto :goto_6

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-le v1, v7, :cond_c

    :goto_7
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    move v2, v3

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private tryChangeIccLockState()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private tryChangePin()V
    .locals 4

    const-string v1, "IccLockSettingsDualMode"

    const-string v2, "tryChangePin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private tryUnlockICCPin()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private unLockIccPinChanged(Z)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "IccLockSettingsDualMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unLockIccPinChanged(), success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string v1, "IccLockSettingsDualMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unLockIccPinChanged mToState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const/4 v0, 0x0

    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v0, 0x7f0c0a03

    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    const-string v1, "IccLockSettingsDualMode"

    const-string v2, "unLockIccPinChanged mToState=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :goto_1
    invoke-direct {p0, v6, p1}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    return-void

    :cond_1
    const v0, 0x7f0c0a02

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lcom/android/settings/IccLockSettingsDualMode;->showPinErrorDialog(I)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getIccState(I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    const-string v1, "IccLockSettingsDualMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIccCardLock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->checkIccSateBeforeDoAction()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v4, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "IccLockSettingsDualMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "phoneType"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "IccLockSettingsDualMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v8, :cond_1

    sput v8, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    iput v8, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    :goto_1
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getIccState(I)I

    move-result v0

    if-ne v0, v8, :cond_4

    iput-boolean v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    :goto_2
    const-string v3, "IccLockSettingsDualMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTelephonyManager.getIccState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_2

    sput v6, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    goto :goto_1

    :cond_2
    if-ne v2, v9, :cond_3

    sput v9, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    goto :goto_2

    :cond_5
    iput-boolean v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v3, v8, :cond_8

    const v3, 0x7f060022

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    :cond_6
    :goto_3
    const-string v3, "sim_pin"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/EditPinPreference;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const-string v3, "sim_toggle"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    const-string v3, "unlockpin_toggle"

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    if-eqz p1, :cond_7

    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const-string v3, "dialogPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    const-string v3, "dialogError"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    const-string v3, "enableState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    const-string v3, "IccLockSettingsDualMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDialogState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    :goto_4
    const-string v3, "ChangePinFail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    const-string v3, "InvalidPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    const-string v3, "OldPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    const-string v3, " NewPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    const-string v3, "RetryInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    :cond_7
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/EditPinPreference;->setOnCreateDialogListener(Lcom/android/settings/EditPinPreference$onCreateDialogListener;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->checkIccSateBeforeDoAction()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "IccLockSettingsDualMode"

    const-string v4, "set false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v3, v6, :cond_9

    const v3, 0x7f060021

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    :cond_9
    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v3, v9, :cond_6

    const v3, 0x7f060046

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    :pswitch_0
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_1
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    const-string v3, "newPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/view/View;)V
    .locals 9

    const v1, 0x2040123

    const/4 v4, 0x2

    const v8, 0x7f0c04ce

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-ne v2, v4, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    if-nez v2, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatusExt(I)[I

    move-result-object v2

    aget v0, v2, v7

    iput v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v2, :cond_4

    const-string v2, " (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    if-le v0, v6, :cond_1

    const v1, 0x2040124

    :cond_1
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_2

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-le v0, v6, :cond_5

    const v1, 0x2040124

    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_3

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 8

    const v7, 0x7f0c0e3a

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "IccLockSettingsDualMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPinEntered(), mDialogState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , positiveResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->updateState()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettingsDualMode;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->tryChangeIccLockState()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->tryUnlockICCPin()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->tryChangePin()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    iput v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p2, v2, :cond_3

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    if-ne p2, v2, :cond_1

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    const-string v0, "IccLockSettingsDualMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    const-string v0, "IccLockSettingsDualMode"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IccLockSettingsDualMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialogState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string v0, "ChangePinFail"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "InvalidPin"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "OldPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " NewPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RetryInfo"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
