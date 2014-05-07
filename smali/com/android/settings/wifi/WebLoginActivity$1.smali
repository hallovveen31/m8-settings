.class Lcom/android/settings/wifi/WebLoginActivity$1;
.super Ljava/lang/Object;
.source "WebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WebLoginActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WebLoginActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WebLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WebLoginActivity$1;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WebLoginActivity$1;->this$0:Lcom/android/settings/wifi/WebLoginActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wifi/WebLoginActivity;->checkConnectedWIFIStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WebLoginActivity;->access$000(Lcom/android/settings/wifi/WebLoginActivity;Z)V

    return-void
.end method
