.class Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;
.super Lcom/android/settings/framework/app/HtcServiceHandler;
.source "HtcIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcIntentService;


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/app/HtcIntentService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;->this$0:Lcom/android/settings/framework/app/HtcIntentService;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/framework/app/HtcServiceHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcServiceHandler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcIntentService$InternalServiceHandler;->this$0:Lcom/android/settings/framework/app/HtcIntentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method
