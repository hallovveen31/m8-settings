.class Lcom/android/settings/SecurityDialog$1;
.super Ljava/lang/Object;
.source "SecurityDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecurityDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecurityDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/SecurityDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SecurityDialog$1;->this$0:Lcom/android/settings/SecurityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SecurityDialog$1;->this$0:Lcom/android/settings/SecurityDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    sget-boolean v0, Lcom/android/settings/SecurityDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecurityDialog"

    const-string v1, "Font scale or theme changed, recreate UI."

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
