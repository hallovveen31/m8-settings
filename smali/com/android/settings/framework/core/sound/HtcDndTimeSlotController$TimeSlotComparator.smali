.class Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$TimeSlotComparator;
.super Ljava/lang/Object;
.source "HtcDndTimeSlotController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeSlotComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$TimeSlotComparator;->this$0:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$TimeSlotComparator;-><init>(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;)I
    .locals 4
    .parameter "leftItem"
    .parameter "rightItem"

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 287
    const/4 v0, -0x1

    .line 291
    :goto_0
    return v0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 282
    check-cast p1, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    .end local p1
    check-cast p2, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$TimeSlotComparator;->compare(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;)I

    move-result v0

    return v0
.end method
