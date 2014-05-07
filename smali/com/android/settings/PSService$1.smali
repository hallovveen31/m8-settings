.class Lcom/android/settings/PSService$1;
.super Ljava/lang/Thread;
.source "PSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PSService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PSService;


# direct methods
.method constructor <init>(Lcom/android/settings/PSService;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/settings/PSService$1;->this$0:Lcom/android/settings/PSService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 532
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 533
    iget-object v0, p0, Lcom/android/settings/PSService$1;->this$0:Lcom/android/settings/PSService;

    #calls: Lcom/android/settings/PSService;->SetNDISData()V
    invoke-static {v0}, Lcom/android/settings/PSService;->access$000(Lcom/android/settings/PSService;)V

    .line 534
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 536
    return-void
.end method
