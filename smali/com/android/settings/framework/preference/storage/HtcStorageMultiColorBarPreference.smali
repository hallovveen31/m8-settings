.class public Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;
.source "HtcStorageMultiColorBarPreference.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
.implements Lcom/android/settings/framework/preference/storage/HtcIStorageVolumePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MESSAGE_REFRESH_MULTI_COLOR_BAR:I = 0x1001

.field private static final MESSAGE_SET_MULTI_COLOR_BAR_VISIBILITY:I = 0x1002

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppsSpace:Ljava/lang/Long;

.field private mDownloadSpace:Ljava/lang/Long;

.field private mImageAndVideoSpace:Ljava/lang/Long;

.field private mMusicSpace:Ljava/lang/Long;

.field private mTotalSpace:Ljava/lang/Long;

.field private mUsedSpace:Ljava/lang/Long;

.field private mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method private onRefreshMultiColorBar()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 243
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "onRefreshMultiColorBar, mTotalSpace:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAppsSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mImageAndVideoSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMusicSpac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDownloadSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUsedSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    sget-object v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-ltz v3, :cond_9

    .line 277
    invoke-virtual {p0, v5, v6}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setTotal(J)Z

    .line 286
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 287
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setAppsSpace(J)Z

    .line 290
    :cond_2
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setImageAndVideoSpace(J)Z

    .line 294
    :cond_3
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 295
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setMusicSpace(J)Z

    .line 298
    :cond_4
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 299
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setDownloadSpace(J)Z

    .line 302
    :cond_5
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    if-eqz v3, :cond_8

    .line 303
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 319
    .local v1, space:J
    cmp-long v3, v5, v1

    if-ltz v3, :cond_a

    .line 320
    const-wide/16 v1, 0x0

    .line 342
    :cond_6
    :goto_1
    sget-boolean v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 343
    sget-object v3, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOtherSpace:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_7
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setOtherSpace(J)Z

    .line 348
    .end local v1           #space:J
    :cond_8
    return-void

    .line 280
    :cond_9
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setTotal(J)Z

    goto :goto_0

    .line 323
    .restart local v1       #space:J
    :cond_a
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    if-eqz v3, :cond_b

    .line 324
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 327
    :cond_b
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    if-eqz v3, :cond_c

    .line 328
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 331
    :cond_c
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    if-eqz v3, :cond_d

    .line 332
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 335
    :cond_d
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 336
    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_1
.end method

.method private onSetMultiColorBarVisibilty(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 411
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSetMultiColorBarVisibilty(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->hideMultiColorBar(Z)V

    .line 417
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshMultiColorBar()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 208
    .local v0, uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 209
    const/16 v1, 0x1001

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v2, "refreshMultiColorBar()"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMultiColorBarVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 398
    .local v0, uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 399
    const/16 v1, 0x1002

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v2, "setMultiColorBarVisibility()"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 1
    .parameter "storageVolume"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 123
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    .line 124
    return-void
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    .line 102
    .local v1, state:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 109
    const v0, 0x7f0c08b7

    .line 111
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 106
    .end local v0           #resId:I
    :pswitch_0
    const v0, 0x7f0c0e6b

    .line 107
    .restart local v0       #resId:I
    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVolume()Lcom/android/settings/framework/core/storage/HtcIStorageVolume;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method protected onCreatedPreferenceView(Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;Landroid/view/View;)V
    .locals 0
    .parameter "preferenceView"
    .parameter "customView"
    .parameter "customWidgetView"

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V

    .line 364
    if-eqz p2, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    .line 367
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    check-cast p1, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;

    .end local p1
    check-cast p2, Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onCreatedPreferenceView(Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference$PreferenceView;Lcom/android/settings/framework/widget/HtcStorageMultiColorBar;Landroid/view/View;)V

    return-void
.end method

.method protected onGetAppsSpace(J)V
    .locals 1
    .parameter "appsSize"

    .prologue
    .line 195
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mAppsSpace:Ljava/lang/Long;

    .line 196
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->refreshMultiColorBar()V

    .line 197
    return-void
.end method

.method protected onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V
    .locals 2
    .parameter "space"

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getDownloadSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mDownloadSpace:Ljava/lang/Long;

    .line 201
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getMusicSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMusicSpace:Ljava/lang/Long;

    .line 202
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;->getImageAndVideoSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mImageAndVideoSpace:Ljava/lang/Long;

    .line 203
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->refreshMultiColorBar()V

    .line 204
    return-void
.end method

.method protected onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 6
    .parameter "space"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, status:Ljava/lang/String;
    const-string v1, ""

    .line 167
    .local v1, readOnly:Ljava/lang/String;
    iget-wide v4, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mTotalSpace:Ljava/lang/Long;

    .line 168
    invoke-virtual {p1}, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->getUsedSpace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mUsedSpace:Ljava/lang/Long;

    .line 170
    sget-boolean v4, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetTotalAvailableSpace:status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->log(Ljava/lang/String;)V

    .line 175
    :cond_0
    const-string v4, "mounted_ro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string v2, "mounted"

    .line 177
    const v4, 0x7f0c0b3e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_1
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, title:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v4, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->refreshMultiColorBar()V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->updateState()V

    .line 192
    return-void

    .line 186
    .end local v3           #title:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0c08b7

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 224
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onRefreshMultiColorBar()V

    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onSetMultiColorBarVisibilty(I)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsStorageMultiColorBarPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public final onResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, context:Landroid/content/Context;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return-void

    .line 136
    :pswitch_1
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_GET_TOTAL_AVAILABLE_SPACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-static {v0, v1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->log(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    goto :goto_0

    .line 145
    :pswitch_2
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_GET_APPS_SPACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->log(Ljava/lang/String;)V

    .line 150
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onGetAppsSpace(J)V

    goto :goto_0

    .line 153
    :pswitch_3
    sget-boolean v1, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_GET_MEDIA_FILES_SPACE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->log(Ljava/lang/String;)V

    .line 157
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->onGetMediaFilesSpace(Lcom/android/settings/framework/core/storage/media/HtcMediaFileGroupInfo;)V

    goto/16 :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public updateState()V
    .locals 4

    .prologue
    .line 374
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x40b0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 394
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    .line 381
    .local v1, state:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    .line 392
    .local v0, enabled:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setEnabledInForeground(Z)V

    .line 393
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcStorageMultiColorBarPreference;->setMultiColorBarVisibility(I)V

    goto :goto_0

    .line 384
    .end local v0           #enabled:Z
    :pswitch_0
    const/4 v0, 0x1

    .line 385
    .restart local v0       #enabled:Z
    goto :goto_1

    .line 393
    :cond_1
    const/16 v2, 0x8

    goto :goto_2

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
