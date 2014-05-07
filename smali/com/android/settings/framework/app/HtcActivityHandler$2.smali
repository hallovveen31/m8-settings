.class Lcom/android/settings/framework/app/HtcActivityHandler$2;
.super Ljava/lang/Object;
.source "HtcActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/app/HtcActivityHandler;->onStart()V
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
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandler$2;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandler$2;->this$0:Lcom/android/settings/framework/app/HtcActivityHandler;

    #getter for: Lcom/android/settings/framework/app/HtcActivityHandler;->mHost:Lcom/android/settings/framework/app/HtcIInternalHost;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->access$000(Lcom/android/settings/framework/app/HtcActivityHandler;)Lcom/android/settings/framework/app/HtcIInternalHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/framework/app/HtcIInternalHost;->onStartInBackground()V

    .line 333
    return-void
.end method
