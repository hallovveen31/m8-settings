.class public Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;
.super Ljava/lang/Object;
.source "HtcStatFs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/storage/HtcStatFs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalAvailableSpace"
.end annotation


# instance fields
.field public availableSpace:J

.field public totalSpace:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 147
    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    .line 150
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .parameter "totalSpace"
    .parameter "availableSpace"

    .prologue
    const-wide/16 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 147
    iput-wide v0, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    .line 153
    iput-wide p1, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    .line 154
    iput-wide p3, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    .line 155
    return-void
.end method


# virtual methods
.method public getUsedSpace()J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 160
    iget-wide v2, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 162
    :cond_0
    const-wide/16 v0, -0x1

    .line 166
    .local v0, usedSpace:J
    :goto_0
    return-wide v0

    .line 164
    .end local v0           #usedSpace:J
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->totalSpace:J

    iget-wide v4, p0, Lcom/android/settings/framework/core/storage/HtcStatFs$TotalAvailableSpace;->availableSpace:J

    sub-long v0, v2, v4

    .restart local v0       #usedSpace:J
    goto :goto_0
.end method
