.class Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$2;
.super Ljava/lang/Object;
.source "HtcAbsPrintJobSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintRestartButton(Landroid/content/Context;)Lcom/htc/widget/HtcFooterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$2;->this$0:Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$2;->this$0:Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;

    #calls: Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;
    invoke-static {v1}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->access$000(Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;)Landroid/print/PrintJob;

    move-result-object v0

    .line 168
    .local v0, printJob:Landroid/print/PrintJob;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/print/PrintJob;->restart()V

    .line 170
    iget-object v1, p0, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment$2;->this$0:Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/print/HtcAbsPrintJobSettingsFragment;->finish()V

    .line 172
    :cond_0
    return-void
.end method
