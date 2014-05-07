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

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 95
    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    .line 128
    new-instance v0, Lcom/android/settings/IccLockSettingsDualMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettingsDualMode$1;-><init>(Lcom/android/settings/IccLockSettingsDualMode;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 144
    new-instance v0, Lcom/android/settings/IccLockSettingsDualMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettingsDualMode$2;-><init>(Lcom/android/settings/IccLockSettingsDualMode;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettingsDualMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettingsDualMode;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettingsDualMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettingsDualMode;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/IccLockSettingsDualMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettingsDualMode;->unLockIccPinChanged(Z)V

    return-void
.end method

.method private checkIccSateBeforeDoAction()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 977
    const/4 v1, 0x1

    .line 978
    .local v1, iccNotOk:Z
    const v2, 0x7f0c04d0

    .line 979
    .local v2, resId:I
    iget-object v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_0

    .line 1034
    :goto_0
    return v4

    .line 984
    :cond_0
    iget-object v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v6, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 986
    .local v0, icc:Lcom/android/internal/telephony/IccCard;
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

    .line 987
    if-eqz v0, :cond_1

    .line 988
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .line 989
    .local v3, state:Lcom/android/internal/telephony/IccCardConstants$State;
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

    .line 1010
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v3, :cond_4

    .line 1013
    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1014
    const v2, 0x7f0c04cf

    .line 1027
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1028
    invoke-virtual {p0, v2}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1033
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

    .line 1034
    goto :goto_0

    .line 1016
    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const v2, 0x7f0c04d0

    goto :goto_1

    .line 1023
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/IccLockSettingsDualMode;->isIccLockEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0c0e2f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, summary:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 174
    .end local v1           #summary:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c0e30

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private iccLockChanged(Z)V
    .locals 6
    .parameter "success"

    .prologue
    const/4 v5, 0x1

    .line 817
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

    .line 818
    if-eqz p1, :cond_4

    .line 819
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 821
    const/4 v1, 0x0

    .line 823
    .local v1, resId:I
    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 824
    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-ne v2, v5, :cond_1

    const v1, 0x7f0c057c

    .line 831
    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 833
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->isEnabled()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eq v2, v3, :cond_0

    .line 834
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 857
    .end local v1           #resId:I
    :cond_0
    :goto_1
    invoke-direct {p0, v5, p1}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    .line 864
    return-void

    .line 824
    .restart local v1       #resId:I
    :cond_1
    const v1, 0x7f0c057d

    goto :goto_0

    .line 827
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-ne v2, v5, :cond_3

    const v1, 0x7f0c057e

    :goto_2
    goto :goto_0

    :cond_3
    const v1, 0x7f0c057f

    goto :goto_2

    .line 840
    .end local v1           #resId:I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v2, :cond_5

    const/4 v0, 0x0

    .line 841
    .local v0, currentCard:Lcom/android/internal/telephony/IccCard;
    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_6

    .line 843
    invoke-direct {p0, v5}, Lcom/android/settings/IccLockSettingsDualMode;->showPinErrorDialog(I)V

    goto :goto_1

    .line 840
    .end local v0           #currentCard:Lcom/android/internal/telephony/IccCard;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    goto :goto_3

    .line 851
    .restart local v0       #currentCard:Lcom/android/internal/telephony/IccCard;
    :cond_6
    const-string v2, "IccLockSettingsDualMode"

    const-string v3, "card or cardstae is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private iccPinChanged(Z)V
    .locals 5
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 867
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

    .line 868
    if-nez p1, :cond_0

    .line 872
    invoke-direct {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->showPinErrorDialog(I)V

    .line 896
    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    .line 903
    return-void

    .line 883
    :cond_0
    sget v0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v0, v3, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c08d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 888
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

    .prologue
    .line 168
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
    .parameter "pin"

    .prologue
    .line 914
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 916
    :cond_0
    const-string v0, "IccLockSettingsDualMode"

    const-string v1, "reasonablePin false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x0

    .line 919
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

    .line 924
    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 925
    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 926
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 928
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    .line 930
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    .line 932
    iput v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 933
    return-void
.end method

.method private resetDialogState(IZ)V
    .locals 10
    .parameter "wherefrom"
    .parameter "success"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 937
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

    .line 939
    iput-object v9, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 940
    iput-object v9, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 941
    iput-boolean v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    .line 942
    if-ne p2, v6, :cond_1

    .line 943
    iput v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 963
    :goto_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 964
    .local v0, icc:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    if-eq p1, v8, :cond_0

    .line 965
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 966
    .local v1, state:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    .line 967
    iput v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 971
    .end local v1           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 972
    iput-boolean v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    .line 973
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    .line 974
    return-void

    .line 945
    .end local v0           #icc:Lcom/android/internal/telephony/IccCard;
    :cond_1
    if-ne p1, v8, :cond_2

    .line 946
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0

    .line 948
    :cond_2
    if-ne p1, v6, :cond_3

    .line 951
    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0

    .line 957
    :cond_3
    if-ne p1, v7, :cond_4

    .line 958
    iput v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0

    .line 960
    :cond_4
    iput v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_0
.end method

.method private setDialogValues()V
    .locals 8

    .prologue
    const v7, 0x7f0c0e35

    const v6, 0x7f0c08d1

    const v5, 0x7f0c0e31

    const v4, 0x7f0c08cd

    const/4 v3, 0x2

    .line 569
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 570
    const-string v0, ""

    .line 571
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 620
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_7

    .line 621
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 631
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v1, :cond_8

    .line 632
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 642
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 643
    return-void

    .line 575
    :pswitch_0
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c08d0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e32

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0e33

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c0e34

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 588
    :pswitch_1
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_4

    .line 589
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 593
    :cond_4
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 599
    :pswitch_2
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_5

    .line 600
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c08d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 604
    :cond_5
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e36

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 610
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0e37

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v1, v3, :cond_6

    .line 612
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 615
    :cond_6
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 625
    :cond_7
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 637
    :cond_8
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 638
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

    .line 639
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto/16 :goto_1

    .line 571
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

    .prologue
    const v2, 0x2040124

    const v3, 0x2040123

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 427
    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-nez v4, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatusExt(I)[I

    move-result-object v4

    aget v1, v4, v8

    .line 434
    .local v1, pinRetry:I
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

    .line 435
    if-eqz v1, :cond_0

    .line 439
    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-ne v4, v7, :cond_6

    .line 441
    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_4

    .line 442
    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_3

    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 473
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->showPinDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IccLockSettingsDualMode"

    const-string v3, "showPinDialog failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    move v2, v3

    .line 442
    goto :goto_1

    .line 448
    :cond_4
    if-le v1, v7, :cond_5

    :goto_3
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    .line 454
    :cond_6
    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 456
    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_8

    .line 457
    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_7

    :goto_4
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_4

    .line 464
    :cond_8
    if-le v1, v7, :cond_9

    :goto_5
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_5
.end method

.method private showPinErrorDialog(I)V
    .locals 10
    .parameter "state"

    .prologue
    const v9, 0x7f0c0e39

    const v2, 0x2040124

    const v3, 0x2040123

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 484
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

    .line 485
    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-nez v4, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_0

    .line 493
    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatusExt(I)[I

    move-result-object v4

    aget v1, v4, v8

    .line 495
    .local v1, pinRetry:I
    if-eqz v1, :cond_0

    .line 499
    const-string v4, ""

    iput-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 500
    if-ne p1, v7, :cond_5

    .line 501
    iput v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 502
    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_3

    .line 503
    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_2

    :goto_1
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 508
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 557
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    .line 560
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->showPinDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IccLockSettingsDualMode"

    const-string v3, "showPinDialog failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v2, v3

    .line 503
    goto :goto_1

    .line 511
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

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 519
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_9

    .line 520
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 521
    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_7

    .line 522
    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_6

    :goto_4
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 525
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    move v2, v3

    .line 522
    goto :goto_4

    .line 528
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

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 534
    :cond_9
    const/4 v4, 0x2

    if-ne p1, v4, :cond_d

    .line 535
    iput-boolean v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    .line 536
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 537
    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v4, :cond_b

    .line 538
    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    if-le v1, v7, :cond_a

    :goto_6
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 543
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_a
    move v2, v3

    .line 538
    goto :goto_6

    .line 546
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

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 554
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 555
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 812
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 814
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 906
    const-string v1, "IccLockSettingsDualMode"

    const-string v2, "tryChangePin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 909
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 911
    return-void
.end method

.method private tryUnlockICCPin()V
    .locals 3

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1041
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1042
    return-void
.end method

.method private unLockIccPinChanged(Z)V
    .locals 7
    .parameter "success"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1045
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

    .line 1046
    if-eqz p1, :cond_2

    .line 1047
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

    .line 1048
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1050
    const/4 v0, 0x0

    .line 1051
    .local v0, resId:I
    sget v1, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1052
    const v0, 0x7f0c0a03

    .line 1056
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1058
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->isEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-eq v1, v2, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 1062
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1064
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 1065
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 1066
    const-string v1, "IccLockSettingsDualMode"

    const-string v2, "unLockIccPinChanged mToState=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1084
    .end local v0           #resId:I
    :goto_1
    invoke-direct {p0, v6, p1}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    .line 1091
    return-void

    .line 1054
    .restart local v0       #resId:I
    :cond_1
    const v0, 0x7f0c0a02

    goto :goto_0

    .line 1073
    .end local v0           #resId:I
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/settings/IccLockSettingsDualMode;->showPinErrorDialog(I)V

    goto :goto_1
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1094
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/IccLockSettingsDualMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1096
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getIccState(I)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    .line 1097
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

    .line 1098
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettingsDualMode;->finish()V

    .line 1126
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1096
    goto :goto_0

    .line 1103
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->checkIccSateBeforeDoAction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1106
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 1107
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 1108
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1

    .line 1110
    :cond_2
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1112
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 1114
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    if-eqz v1, :cond_3

    .line 1115
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 1116
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 1117
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1

    .line 1119
    :cond_3
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 1120
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 1121
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v4, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1123
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettingsDualMode;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 186
    .local v1, intent:Landroid/content/Intent;
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

    .line 187
    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettingsDualMode;->finish()V

    .line 313
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v3, "phoneType"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, phoneType:I
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

    .line 194
    if-ne v2, v8, :cond_1

    .line 195
    sput v8, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    .line 196
    iput v8, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    .line 208
    :goto_1
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 210
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getIccState(I)I

    move-result v0

    .line 211
    .local v0, iccState:I
    if-ne v0, v8, :cond_4

    .line 212
    iput-boolean v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    .line 216
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

    .line 219
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettingsDualMode;->finish()V

    goto :goto_0

    .line 197
    .end local v0           #iccState:I
    :cond_1
    if-ne v2, v6, :cond_2

    .line 198
    sput v6, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    .line 199
    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    goto :goto_1

    .line 200
    :cond_2
    if-ne v2, v9, :cond_3

    .line 201
    sput v9, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    .line 202
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccType:I

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettingsDualMode;->finish()V

    goto :goto_0

    .line 214
    .restart local v0       #iccState:I
    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    goto :goto_2

    .line 227
    :cond_5
    iput-boolean v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    .line 231
    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v3, v8, :cond_8

    .line 232
    const v3, 0x7f060022

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->addPreferencesFromResource(I)V

    .line 240
    :cond_6
    :goto_3
    const-string v3, "sim_pin"

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/EditPinPreference;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 241
    const-string v3, "sim_toggle"

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    check-cast v3, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 242
    const-string v3, "unlockpin_toggle"

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    .line 243
    if-eqz p1, :cond_7

    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 245
    const-string v3, "dialogState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 246
    const-string v3, "dialogPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 247
    const-string v3, "dialogError"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 248
    const-string v3, "enableState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    .line 249
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

    .line 251
    iget v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v3, :pswitch_data_0

    .line 268
    :goto_4
    const-string v3, "ChangePinFail"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    .line 269
    const-string v3, "InvalidPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    .line 270
    const-string v3, "OldPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    .line 271
    const-string v3, " NewPin"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    .line 272
    const-string v3, "RetryInfo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 276
    :cond_7
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/EditPinPreference;->setOnCreateDialogListener(Lcom/android/settings/EditPinPreference$onCreateDialogListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettingsDualMode;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setPersistent(Z)V

    .line 284
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettingsDualMode;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    .line 287
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mContext:Landroid/content/Context;

    .line 288
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->checkIccSateBeforeDoAction()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 289
    const-string v3, "IccLockSettingsDualMode"

    const-string v4, "set false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 292
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 293
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v7}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 294
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 233
    :cond_8
    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v3, v6, :cond_9

    .line 234
    const v3, 0x7f060021

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 235
    :cond_9
    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    if-ne v3, v9, :cond_6

    .line 236
    const v3, 0x7f060046

    invoke-virtual {p0, v3}, Lcom/android/settings/IccLockSettingsDualMode;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 253
    :pswitch_0
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    goto/16 :goto_4

    .line 257
    :pswitch_1
    const-string v3, "oldPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    .line 258
    const-string v3, "newPinCode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    goto/16 :goto_4

    .line 297
    :cond_a
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 298
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 299
    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mIccCardLock:Z

    if-eqz v3, :cond_b

    .line 300
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v7}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 304
    :cond_b
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 305
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 306
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v5, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 308
    iget-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 251
    nop

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

    const/4 v4, 0x2

    const v8, 0x7f0c04ce

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 727
    if-eqz p1, :cond_3

    .line 730
    iget v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-ne v2, v4, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    if-nez v2, :cond_6

    .line 734
    :cond_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v3, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/HtcIfPhone;->getDetailIccStatusExt(I)[I

    move-result-object v2

    aget v0, v2, v7

    .line 736
    .local v0, pinRetry:I
    iput v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 737
    iget-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v2, :cond_4

    .line 738
    const-string v2, " (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    if-le v0, v6, :cond_1

    const v1, 0x2040124

    :cond_1
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 743
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_2

    .line 744
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 757
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->setDialogValues()V

    .line 778
    .end local v0           #pinRetry:I
    :cond_3
    :goto_1
    return-void

    .line 748
    .restart local v0       #pinRetry:I
    :cond_4
    if-le v0, v6, :cond_5

    const v1, 0x2040124

    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/IccLockSettingsDualMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 752
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_2

    .line 753
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

    .line 762
    .end local v0           #pinRetry:I
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-nez v1, :cond_7

    .line 763
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_3

    .line 764
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

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 766
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 767
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_1

    .line 770
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    if-ne v1, v6, :cond_3

    .line 771
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 351
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 352
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 354
    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 8
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const v7, 0x7f0c0e3a

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 647
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

    .line 648
    if-nez p2, :cond_0

    .line 651
    invoke-direct {p0, v4, v5}, Lcom/android/settings/IccLockSettingsDualMode;->resetDialogState(IZ)V

    .line 652
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->updateState()V

    .line 723
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettingsDualMode;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 667
    iput-boolean v5, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    .line 675
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    .line 679
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    .line 681
    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 683
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->tryChangeIccLockState()V

    goto :goto_0

    .line 687
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->tryUnlockICCPin()V

    goto :goto_0

    .line 691
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    .line 692
    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 693
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 694
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 695
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 696
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    .line 699
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    .line 700
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 701
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 702
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    .line 705
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 706
    iget-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mLimitedDisplayArea:Z

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 713
    :goto_1
    iput v6, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 714
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPin:Ljava/lang/String;

    .line 715
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    goto :goto_1

    .line 717
    :cond_3
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    .line 718
    iput-object v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    .line 719
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->tryChangePin()V

    goto :goto_0

    .line 681
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
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 784
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 786
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    .line 788
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 789
    iput v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 790
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    :cond_1
    :goto_0
    move v0, v1

    .line 804
    :goto_1
    return v0

    .line 791
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p2, v2, :cond_3

    .line 792
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    goto :goto_1

    .line 796
    :cond_3
    iget-object v2, p0, Lcom/android/settings/IccLockSettingsDualMode;->mUnlockPinToggle:Lcom/htc/preference/HtcPreference;

    if-ne p2, v2, :cond_1

    .line 797
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    .line 798
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

    .line 800
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    .line 801
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 317
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 319
    const-string v0, "IccLockSettingsDualMode"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
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

    .line 325
    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    if-ne v0, v3, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    .line 343
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 346
    return-void

    .line 328
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0

    .line 331
    :cond_2
    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/android/settings/IccLockSettingsDualMode;->showPinDialog()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    iget v0, p0, Lcom/android/settings/IccLockSettingsDualMode;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    const-string v0, "ChangePinFail"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mChangePinFail:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    const-string v0, "InvalidPin"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mInvalidPin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    const-string v0, "OldPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, " NewPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "RetryInfo"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mRetryInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_1
    return-void

    .line 374
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 372
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 405
    if-eqz p1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPhone:Lcom/android/internal/telephony/Phone;

    sget v2, Lcom/android/settings/IccLockSettingsDualMode;->mPhoneType:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getIccCardExt(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 412
    .local v0, shouldCheck:Z
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinToggle:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 417
    iget-object v1, p0, Lcom/android/settings/IccLockSettingsDualMode;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 422
    .end local v0           #shouldCheck:Z
    :cond_1
    return-void
.end method
