.class Lcom/android/settings/SmartNSEnabler$4$1;
.super Ljava/lang/Object;
.source "SmartNSEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNSEnabler$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SmartNSEnabler$4;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNSEnabler$4;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$4$1;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 906
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 907
    iget-object v0, p0, Lcom/android/settings/SmartNSEnabler$4$1;->this$1:Lcom/android/settings/SmartNSEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SmartNSEnabler$4;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/settings/SmartNSEnabler;->access$000(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 908
    return-void
.end method
