.class public Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;
.super Ljava/lang/Object;
.source "HtcDndTimeSlotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$1;,
        Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$TimeSlotComparator;,
        Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getUntilMillis()J
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->isStartSlot()Z

    move-result v4

    if-ne v4, v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-gtz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->isStartSlot()Z

    move-result v4

    if-ne v4, v8, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move-object v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const-wide/16 v4, -0x1

    :goto_2
    return-wide v4

    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v4

    goto :goto_2
.end method

.method private setEndSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->isStartSlot()Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_1
    return-void
.end method

.method private setEndSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;J)V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->isStartSlot()Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_1
    return-void
.end method

.method private setStartSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->isStartSlot()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_1
    return-void
.end method

.method private setStartSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;J)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v3, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    iput-object v3, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    iget-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    if-nez v2, :cond_3

    iput-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->isStartSlot()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-gtz v2, :cond_1

    iget-object v2, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->checkPriority(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iput-object v0, p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    goto :goto_0
.end method


# virtual methods
.method public addTimeSlot(JJII)Z
    .locals 7

    iget-object v6, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    const/4 v3, 0x1

    move-wide v1, p1

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;-><init>(JZII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    const/4 v3, 0x0

    move-wide v1, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;-><init>(JZII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public addTimeSlotCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$TimeSlotComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$TimeSlotComparator;-><init>(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public getResultSlotData(J)Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;
    .locals 4

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;-><init>(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;)V

    invoke-direct {p0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->getUntilMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mUntilMillis:J

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->mList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->setStartSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;)V

    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->setEndSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->setStartSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;J)V

    invoke-direct {p0, v1, p1, p2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->setEndSlotData(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;J)V

    goto :goto_0
.end method
