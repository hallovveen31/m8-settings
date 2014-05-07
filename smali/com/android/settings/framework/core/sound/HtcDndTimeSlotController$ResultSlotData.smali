.class public Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;
.super Ljava/lang/Object;
.source "HtcDndTimeSlotController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultSlotData"
.end annotation


# instance fields
.field public mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

.field public mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

.field public mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

.field public mUntilMillis:J

.field final synthetic this$0:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->this$0:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 5

    invoke-static {}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->access$000()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    if-nez v2, :cond_1

    const-string v2, "cur slot: null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    if-nez v2, :cond_2

    const-string v2, "start slot: null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    if-nez v2, :cond_3

    const-string v2, "end slot: null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "until millis: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mUntilMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "cur slot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", allowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mCurSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "start slot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", allowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextStartSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    const-string v2, "  end slot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", allowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotController$ResultSlotData;->mNextEndSlot:Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;

    invoke-virtual {v3}, Lcom/android/settings/framework/core/sound/HtcDndTimeSlotItem;->getAllowedType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method
