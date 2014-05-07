.class public Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;
.source "HtcDropboxVolumeBarPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->TAG:Ljava/lang/String;

    .line 37
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const v0, 0x101008d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->onGetTotalAvailableSpace()V

    return-void
.end method

.method private onGetTaotalAvailableSpaceInOtherThread()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference$1;-><init>(Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method private onGetTotalAvailableSpace()V
    .locals 23

    .prologue
    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 101
    .local v4, context:Landroid/content/Context;
    const-string v11, ""

    .line 102
    .local v11, title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 103
    .local v7, progress:I
    const-wide/16 v12, 0x0

    .line 104
    .local v12, totalSpace:J
    const-wide/16 v18, 0x0

    .line 105
    .local v18, usedSpace:J
    const-wide/16 v15, 0x0

    .line 106
    .local v15, totalUsedSpace:J
    const-wide/16 v9, 0x0

    .line 108
    .local v9, sharedSpace:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/framework/core/storage/HtcCloudStorageManager;->getDropboxAccountInfo(Landroid/content/Context;)Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;

    move-result-object v3

    .line 111
    .local v3, accountInfo:Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;
    if-nez v3, :cond_1

    .line 112
    sget-object v20, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->TAG:Ljava/lang/String;

    const-string v21, "accountInfo is null. The account is not assigned."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getQuota()J

    move-result-wide v12

    .line 117
    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getQuotaUsed()J

    move-result-wide v18

    .line 118
    invoke-virtual {v3}, Lcom/android/settings/framework/reflect/com/htc/sdk/service/cloudstorage/HtcCloudStorageAccount;->getQuotaShared()J

    move-result-wide v9

    .line 119
    add-long v15, v18, v9

    .line 122
    invoke-static {v4, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 125
    .local v14, totalSpaceStr:Ljava/lang/String;
    move-wide v0, v15

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, totalUsedSpaceStr:Ljava/lang/String;
    const-string v5, "%1$s / %2$s"

    .line 129
    .local v5, pattern:Ljava/lang/String;
    const-string v20, "%1$s / %2$s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v22, 0x1

    aput-object v14, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 139
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_2

    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-gtz v20, :cond_3

    .line 140
    :cond_2
    const/4 v7, 0x0

    .line 158
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->setProgress(I)Z

    .line 161
    sget-boolean v20, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v20, :cond_0

    .line 162
    const-string v20, "onGetTotalAvailableSpace()"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 163
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " - title: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 164
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " - totalSpace: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 165
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " - usedSpace: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 166
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " - sharedSpace: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 167
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " - totalUsedSpace: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 168
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " - progress: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_3
    long-to-float v0, v12

    move/from16 v20, v0

    const/high16 v21, 0x42c8

    div-float v8, v20, v21

    .line 143
    .local v8, ratio:F
    long-to-float v0, v15

    move/from16 v20, v0

    div-float v6, v20, v8

    .line 149
    .local v6, percentage:F
    cmp-long v20, v15, v12

    if-gez v20, :cond_4

    const/high16 v20, 0x42c6

    cmpg-float v20, v20, v6

    if-gez v20, :cond_4

    .line 150
    const/16 v7, 0x63

    goto/16 :goto_1

    .line 151
    :cond_4
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-lez v20, :cond_5

    const/high16 v20, 0x3f80

    cmpg-float v20, v6, v20

    if-gez v20, :cond_5

    .line 152
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 154
    :cond_5
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto/16 :goto_1
.end method


# virtual methods
.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0e6b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onHandleNonUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->onGetTaotalAvailableSpaceInOtherThread()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"
    .annotation build Lcom/android/settings/framework/os/HtcMessageId;
        id = 0x13
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/cloudstorage/HtcDropboxVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v0}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->syncValueFromDataSourceInBackground()V

    .line 77
    return-void
.end method
