.class public Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;
.super Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;
.source "HtcStorageVolumeBarPreference.java"

# interfaces
.implements Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;
.implements Lcom/android/settings/framework/preference/storage/HtcIStorageVolumePreference;


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference$1;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final MESSAGE_SET_BAR_VISIBILITY:I = 0x1063

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mPreferenceView:Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

.field private mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method private onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V
    .locals 13
    .parameter "tas"

    .prologue
    const-wide/16 v11, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, context:Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v7}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, status:Ljava/lang/String;
    const-string v4, ""

    .line 168
    .local v4, readOnly:Ljava/lang/String;
    const/4 v2, 0x0

    .line 170
    .local v2, progress:I
    sget-boolean v7, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetTotalAvailableSpace:status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 175
    :cond_0
    const-string v7, "mounted_ro"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 176
    const-string v5, "mounted"

    .line 177
    const v7, 0x7f0c0b3e

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    :cond_1
    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p1}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, title:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v7, v6}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    .line 193
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_2

    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v7, v7, v11

    if-ltz v7, :cond_2

    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 195
    :cond_2
    const/4 v2, 0x0

    .line 215
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->updateState()V

    .line 216
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->setProgress(I)Z

    .line 220
    sget-boolean v7, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetTotalAvailableSpace("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v8}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v8}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - totalSpace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - availableSpace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " - progress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 229
    :cond_3
    return-void

    .line 186
    .end local v6           #title:Ljava/lang/String;
    :cond_4
    const v7, 0x7f0c08b7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #title:Ljava/lang/String;
    goto/16 :goto_0

    .line 197
    :cond_5
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    long-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float v3, v7, v8

    .line 198
    .local v3, ratio:F
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    long-to-float v7, v7

    div-float v1, v7, v3

    .line 204
    .local v1, percentage:F
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    iget-wide v9, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    const/high16 v7, 0x42c6

    cmpg-float v7, v7, v1

    if-gez v7, :cond_6

    .line 205
    const/16 v2, 0x63

    .line 212
    :goto_2
    rsub-int/lit8 v2, v2, 0x64

    goto/16 :goto_1

    .line 206
    :cond_6
    iget-wide v7, p1, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_7

    const/high16 v7, 0x3f80

    cmpg-float v7, v1, v7

    if-gez v7, :cond_7

    .line 207
    const/4 v2, 0x1

    goto :goto_2

    .line 209
    :cond_7
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_2
.end method

.method private onSetBarVisibilty(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSetBarVisibilty(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getType()Lcom/android/settings/framework/core/storage/HtcIStorageVolume$StorageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->hideProgressBar(Z)V

    .line 298
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setBarVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    .line 278
    .local v0, uiHandler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 279
    const/16 v1, 0x1063

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;

    const-string v2, "setBarVisibility()"

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->acquireUiHandlerFailed(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public attachStorageVolume(Lcom/android/settings/framework/core/storage/HtcIStorageVolume;)V
    .locals 1
    .parameter "storageVolume"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    .line 141
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v0, p0}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->addOnResponseListener(Lcom/android/settings/framework/os/response/HtcIResponser$OnResponseListener;)Z

    .line 142
    return-void
.end method

.method protected bridge synthetic getCustomTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    .line 126
    .local v1, state:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 133
    const v0, 0x7f0c08b7

    .line 135
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 130
    .end local v0           #resId:I
    :pswitch_0
    const v0, 0x7f0c0e6b

    .line 131
    .restart local v0       #resId:I
    goto :goto_0

    .line 126
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
    .line 145
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    return-object v0
.end method

.method protected onCreatedPreferenceView(Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;Lcom/htc/widget/HtcProgressBar;Landroid/view/View;)V
    .locals 0
    .parameter "preferenceView"
    .parameter "customView"
    .parameter "customWidgetView"

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->updateState()V

    .line 110
    :cond_0
    return-void
.end method

.method protected bridge synthetic onCreatedPreferenceView(Lcom/android/settings/framework/widget/HtcAbsPreferenceView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    check-cast p1, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;

    .end local p1
    check-cast p2, Lcom/htc/widget/HtcProgressBar;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->onCreatedPreferenceView(Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference$PreferenceView;Lcom/htc/widget/HtcProgressBar;Landroid/view/View;)V

    return-void
.end method

.method protected onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V
    .locals 1
    .parameter "msg"
    .parameter "parcel"

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onHandleUiMessage(Landroid/os/Message;Lcom/android/settings/framework/os/HtcMessageParcel;)V

    .line 236
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 242
    :pswitch_0
    iget-object v0, p2, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->onSetBarVisibilty(I)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1063
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitializeInBackground(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsProgressBarPreference;->onInitializeInBackground(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    const-string v1, "Forgot to call attachStorageVolume(...)"

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_0
    return-void
.end method

.method public onResponse(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 152
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE_GET_TOTAL_AVAILABLE_SPACE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-static {v2, v0}, Lcom/android/settings/framework/core/storage/HtcStatFs;->getFormattedSpace(Landroid/content/Context;Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->log(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->onGetTotalAvailableSpace(Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public updateState()V
    .locals 5

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->getState(Ljava/lang/String;)Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;

    move-result-object v1

    .line 255
    .local v1, state:Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;
    sget-boolean v2, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 256
    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateState(): state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->mVolume:Lcom/android/settings/framework/core/storage/HtcIStorageVolume;

    invoke-interface {v4}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    sget-object v2, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference$1;->$SwitchMap$com$android$settings$framework$core$storage$HtcIStorageVolume$MediaState:[I

    invoke-virtual {v1}, Lcom/android/settings/framework/core/storage/HtcIStorageVolume$MediaState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 267
    const/4 v0, 0x0

    .line 271
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->setBarVisibility(I)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/storage/HtcStorageVolumeBarPreference;->setEnabledInForeground(Z)V

    .line 274
    return-void

    .line 263
    .end local v0           #enabled:Z
    :pswitch_0
    const/4 v0, 0x1

    .line 264
    .restart local v0       #enabled:Z
    goto :goto_0

    .line 271
    :cond_1
    const/16 v2, 0x8

    goto :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
