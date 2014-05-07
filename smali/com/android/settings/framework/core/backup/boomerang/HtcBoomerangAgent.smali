.class public Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;
.super Ljava/lang/Object;
.source "HtcBoomerangAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;,
        Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;
    }
.end annotation


# static fields
.field private static final SETTING_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "content://com.htc.backup.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static cancelBackup(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 202
    invoke-static {}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getCancelBackupIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    return-void
.end method

.method public static dumpDatabase(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v11, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 270
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    .line 274
    .local v7, columns:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 275
    if-eqz v10, :cond_0

    .line 276
    const-string v1, "|"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    :goto_1
    if-lez v10, :cond_2

    .line 283
    const/16 v1, 0x3d

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 285
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const/4 v8, 0x0

    .line 288
    .local v8, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_4

    .line 291
    if-eqz v10, :cond_3

    .line 292
    const-string v1, "|"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 296
    :cond_4
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 300
    .end local v7           #columns:I
    .end local v8           #count:I
    .end local v10           #i:I
    :catch_0
    move-exception v9

    .line 301
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->TAG:Ljava/lang/String;

    const-string v2, "Failed to dump the database."

    invoke-static {v1, v2, v9}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    if-eqz v6, :cond_5

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 307
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    :goto_4
    return-void

    .line 299
    .restart local v7       #columns:I
    .restart local v8       #count:I
    .restart local v10       #i:I
    :cond_6
    :try_start_2
    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    if-eqz v6, :cond_5

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 303
    .end local v7           #columns:I
    .end local v8           #count:I
    .end local v10           #i:I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public static getCancelBackupIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.backup"

    const-string v2, "com.htc.backup.BackupRestoreManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    return-object v0
.end method

.method public static getCurrentBackupState(Landroid/content/Context;)Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    const-string v1, "current_state"

    invoke-static {p0, v1}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getKeyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, value:Ljava/lang/String;
    const-string v1, "backup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->BACKUP:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    .line 147
    :goto_0
    return-object v1

    .line 142
    :cond_0
    const-string v1, "restore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->RESTORE:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    goto :goto_0

    .line 144
    :cond_1
    const-string v1, "ready"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->READY:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    goto :goto_0

    .line 147
    :cond_2
    sget-object v1, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;->UNKNOWN:Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$BackupState;

    goto :goto_0
.end method

.method private static getKeyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "key"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 118
    .local v6, c:Landroid/database/Cursor;
    sget-object v2, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->SETTING_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 119
    .local v1, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 122
    .local v8, value:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 130
    :cond_0
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_1
    :goto_0
    return-object v8

    .line 127
    :catch_0
    move-exception v7

    .line 128
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v6, :cond_1

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 130
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getLastBackupTime(Landroid/content/Context;)Ljava/util/Date;
    .locals 5
    .parameter "context"

    .prologue
    .line 157
    const-string v4, "last_backup_time"

    invoke-static {p0, v4}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getKeyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, value:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 161
    .local v1, milliseconds:J
    if-eqz v3, :cond_0

    .line 162
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 167
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v4

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLastFailureTime(Landroid/content/Context;)Ljava/util/Date;
    .locals 5
    .parameter "context"

    .prologue
    .line 176
    const-string v4, "last_failure_time"

    invoke-static {p0, v4}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getKeyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, value:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 180
    .local v1, milliseconds:J
    if-eqz v3, :cond_0

    .line 181
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 186
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v4

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStartBackupIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "backup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.backup"

    const-string v2, "com.htc.backup.BackupRestoreManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    return-object v0
.end method

.method public static isHtcTransportAlive()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 100
    .local v0, bm:Landroid/app/backup/IBackupManager;
    const/4 v1, 0x0

    .line 103
    .local v1, currentTransport:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    if-eqz v1, :cond_0

    const-string v3, "com.htc.backup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v3, 0x1

    .line 112
    :goto_1
    return v3

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->TAG:Ljava/lang/String;

    const-string v4, "Failed to invoke isHtcTransportAlive()."

    invoke-static {v3, v4, v2}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static startBackup(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 194
    invoke-static {}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent;->getStartBackupIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    return-void
.end method
