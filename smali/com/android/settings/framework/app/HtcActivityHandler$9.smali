.class Lcom/android/settings/framework/app/HtcActivityHandler$9;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;->onFinalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$9;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$9;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #calls: Lcom/android/settings/framework/app/HtcActivityHandler;->destroyHandlers()V
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$200(Lcom/android/settings/framework/app/HtcActivityHandler;)V

    return-void
.end method
