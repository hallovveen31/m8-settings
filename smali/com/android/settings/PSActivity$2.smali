.class Lcom/android/settings/PSActivity$2;
.super Ljava/lang/Object;
.source "PSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PSActivity;->ShowPSTriggerDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PSActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/PSActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PSActivity$2;->this$0:Lcom/android/settings/PSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.InternetPS.TriggerOK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/PSActivity$2;->this$0:Lcom/android/settings/PSActivity;

    iget-object v1, v1, Lcom/android/settings/PSActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/PSActivity$2;->this$0:Lcom/android/settings/PSActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
