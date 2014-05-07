.class Lcom/android/settings/framework/os/HtcTimingReference$1;
.super Ljava/lang/Object;
.source "HtcTimingReference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/os/HtcTimingReference;->schedule(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/os/HtcTimingReference;

.field final synthetic val$delayMillis:J


# direct methods
.method constructor <init>(Lcom/android/settings/framework/os/HtcTimingReference;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/os/HtcTimingReference$1;->this$0:Lcom/android/settings/framework/os/HtcTimingReference;

    iput-wide p2, p0, Lcom/android/settings/framework/os/HtcTimingReference$1;->val$delayMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-wide v1, p0, Lcom/android/settings/framework/os/HtcTimingReference$1;->val$delayMillis:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/os/HtcTimingReference$1;->this$0:Lcom/android/settings/framework/os/HtcTimingReference;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcTimingReference;->clear()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
