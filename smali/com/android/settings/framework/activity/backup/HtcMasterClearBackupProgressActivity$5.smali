.class synthetic Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$5;
.super Ljava/lang/Object;
.source "HtcMasterClearBackupProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$framework$core$backup$boomerang$HtcBoomerangAgent$BackupState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->values()[Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$5;->$SwitchMap$com$android$settings$framework$core$backup$boomerang$HtcBoomerangAgent$BackupState:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$5;->$SwitchMap$com$android$settings$framework$core$backup$boomerang$HtcBoomerangAgent$BackupState:[I

    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->BACKUP:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$5;->$SwitchMap$com$android$settings$framework$core$backup$boomerang$HtcBoomerangAgent$BackupState:[I

    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->RESTORE:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
