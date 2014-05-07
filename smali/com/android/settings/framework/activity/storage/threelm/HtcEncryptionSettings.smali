.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcEncryptionSettings.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$3;
    }
.end annotation


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final MIN_BATTERY_LEVEL:I = 0x50

.field private static final MIN_CHARGER_BATTERY_LEVEL:I = 0x1e

.field static final MIN_PASSWORD_QUALITY:I = 0x20000

.field public static final SET_PASSWORD_CALLER:Ljava/lang/String; = "encryption"

.field private static final TAG:Ljava/lang/String; = "HtcEncryptionSettings"


# instance fields
.field private mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

.field private mContentView:Landroid/view/View;

.field private mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

.field private mInitiateButton:Lcom/htc/widget/HtcFooterButton;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

.field private mTitleId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$2;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Lcom/htc/widget/HtcFooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Lcom/android/settings/framework/widget/HtcParagraphContainerView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private getToDoButton(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Lcom/htc/widget/HtcFooterButton;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    const v2, 0x2040265

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    const/high16 v3, 0x2

    if-ge v0, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintStorageEncryption()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->getPasswordQualityFingerprint()I

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v3, 0x7f0c0ec5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f0c0ec6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "password"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->encrypt(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0e4e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    const v8, 0x7f0c09b4

    const v7, 0x7f0c09ac

    const/4 v6, 0x0

    sget-object v1, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    invoke-interface {v1}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0c09ba

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    const v3, 0x7f040065

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    const v4, 0x7f0900a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->getActionTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-static {v0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageTypeFrom(Landroid/os/Bundle;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcEncryptionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcEncryptionSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StorageType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-nez v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The action type and the storage type should not be null.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - mActionType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - mStorageType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-direct {p0, v3}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->getToDoButton(Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/widget/HtcFooterButton;

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/app/HtcISupportFootBar$Stub;->applyFooterBar(Landroid/app/Activity;Landroid/view/View;[Lcom/htc/widget/HtcFooterButton;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Lcom/htc/widget/HtcFooterButton;

    sget-object v3, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$3;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mContentView:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v3, v4, :cond_5

    sget v3, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_confirm_title:I

    iput v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    sget v4, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_encrypt_settings_description:I

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    goto :goto_1

    :cond_5
    sget v3, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_confirm_title:I

    iput v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    sget v4, Lcom/android/settings/framework/core/storage/StorageR$string;->sd_card_unencrypt_settings_description:I

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v3, v4, :cond_6

    iput v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    const v4, 0x7f0c09ad

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    goto :goto_1

    :cond_6
    const v3, 0x7f0c09af

    iput v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    const v4, 0x7f0c09b0

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v3, v4, :cond_8

    iput v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    invoke-virtual {v3, v8}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    :cond_8
    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    iput-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-static {v0, v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->setStorageTypeTo(Landroid/os/Bundle;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)Z

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mActionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    sget-object v4, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v3, v4, :cond_4

    const v3, 0x7f0c09b2

    iput v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mTitleId:I

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mDescription:Lcom/android/settings/framework/widget/HtcParagraphContainerView;

    invoke-virtual {v3, v8}, Lcom/android/settings/framework/widget/HtcParagraphContainerView;->setText(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
