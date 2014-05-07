.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;
.super Landroid/app/Fragment;
.source "HtcEncryptionPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;
    }
.end annotation


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field static final MIN_PASSWORD_QUALITY:I = 0x20000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 146
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 207
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 208
    .local v0, quality:I
    const/high16 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 213
    :goto_0
    return v2

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 213
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

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
    .parameter "password"

    .prologue
    const/4 v6, 0x0

    .line 181
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {v2}, Lcom/android/settings/framework/core/security/crypto/HtcXorCrypto;->encrypt(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 188
    const-string v0, "encryption_ui_enabled"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c09b3

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 196
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    const/16 v1, 0x37

    if-eq p1, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 167
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 172
    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->showFinalConfirmation(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0           #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget-object v10, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isEncryptionEnabled:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    .line 67
    .local v10, property:Lcom/android/settings/framework/content/custom/property/HtcIProperty;,"Lcom/android/settings/framework/content/custom/property/HtcIProperty<Ljava/lang/Boolean;>;"
    invoke-interface {v10}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c09ba

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 78
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, action:Ljava/lang/String;
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    .line 80
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v12

    .line 87
    .local v12, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v0, "storage"

    invoke-virtual {v12, v0}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v0

    const-string v1, "encryption"

    invoke-interface {v0, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v0

    const-string v1, "type"

    const-string v4, "server"

    invoke-interface {v0, v1, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v0

    const-string v1, "action"

    const-string v4, "setting"

    invoke-interface {v0, v1, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 91
    invoke-static {v12}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 94
    invoke-virtual {v12}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 96
    const-string v0, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const-string v7, "com.htc.settings.action.START_ENCRYPTION"

    .line 103
    const-string v0, "storage_type"

    sget-object v1, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    const-string v0, "action_type"

    sget-object v1, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_3
    const-string v0, "com.htc.settings.action.START_ENCRYPTION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {v9}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageTypeFrom(Landroid/content/Intent;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v11

    .line 112
    .local v11, storageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;
    invoke-static {v9}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->getActionTypeFrom(Landroid/content/Intent;)Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    move-result-object v8

    .line 114
    .local v8, actionType:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v2, bundle:Landroid/os/Bundle;
    invoke-static {v2, v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->setStorageTypeTo(Landroid/os/Bundle;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)Z

    .line 116
    invoke-static {v2, v8}, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->setActionTypeTo(Landroid/os/Bundle;Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;)Z

    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, titleId:I
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    invoke-virtual {v11}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 149
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 121
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v8, v0, :cond_5

    .line 122
    const v3, 0x7f0c09a6

    .line 124
    const-string v0, "encryption_ui_enabled"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 126
    :cond_5
    const v3, 0x7f0c09a9

    .line 127
    const-string v0, "encryption_ui_enabled"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 131
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v8, v0, :cond_6

    .line 132
    const v3, 0x7f0c09ac

    .line 133
    const-string v0, "encryption_ui_enabled"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 135
    :cond_6
    const v3, 0x7f0c09af

    .line 136
    const-string v0, "encryption_ui_enabled"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 140
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;->ENCRYPT:Lcom/android/settings/framework/core/storage/encrypt/HtcIStorageEncryptor$ActionType;

    if-ne v8, v0, :cond_4

    .line 141
    const v3, 0x7f0c09b2

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
