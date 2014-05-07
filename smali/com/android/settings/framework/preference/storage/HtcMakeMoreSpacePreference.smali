.class public Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcMakeMoreSpacePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)V
    .locals 1
    .parameter "context"
    .parameter "storageType"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 62
    iput-object p2, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 63
    return-void
.end method

.method private updateStateForPhoneStorage()V
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getInternalSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 206
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->setEnabledInForeground(Z)V

    .line 208
    return-void

    .line 204
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #enabled:Z
    goto :goto_0
.end method

.method private updateStateForSdCardStorage()V
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/android/settings/framework/os/HtcStorageManager;->getSdCardStorageState()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 222
    .local v0, enabled:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->setEnabledInForeground(Z)V

    .line 223
    return-void

    .line 220
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #enabled:Z
    goto :goto_0
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    if-nez v1, :cond_1

    .line 124
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->TAG:Ljava/lang/String;

    const-string v2, "getCustomIntent(): mType: null"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v0, 0x0

    .line 174
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v0

    .line 129
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 166
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4090

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 167
    const-string v1, "com.htc.lmw.action.ITEMS_ACTIVITY_LAUNCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.htc.lmw"

    const-string v3, "com.htc.lmw.MainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 132
    :pswitch_0
    const-string v1, "com.htc.lmw"

    const-string v2, "com.htc.lmw.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 138
    :pswitch_1
    const-string v1, "com.htc.sdcardwizard"

    const-string v2, "com.htc.sdcardwizard.SDCardWizardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "storage_type"

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 147
    :pswitch_2
    const-string v1, "com.htc.sdcardwizard"

    const-string v2, "com.htc.sdcardwizard.SDCardWizardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "storage_type"

    sget-object v3, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->SD_CARD:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->getStorageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "FREE_STORAGE"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0283

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0282

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f0c0282

    return v0
.end method

.method protected setStorageVolumeType(Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    .line 110
    return-void
.end method

.method updateState()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$StorageType:[I

    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->mStorageType:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->updateStateForPhoneStorage()V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcMakeMoreSpacePreference;->updateStateForSdCardStorage()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
