.class Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;
.super Ljava/lang/Object;
.source "HtcDndSchedulesSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleRecordComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;->this$0:Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;-><init>(Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)I
    .locals 2
    .parameter "leftObj"
    .parameter "rightObj"

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 304
    const/4 v0, -0x1

    .line 308
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;->getId()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 306
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 299
    check-cast p1, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    .end local p1
    check-cast p2, Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/activity/sound/HtcDndSchedulesSettings$ScheduleRecordComparator;->compare(Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;Lcom/android/settings/framework/core/sound/HtcDndScheduleRecord;)I

    move-result v0

    return v0
.end method
