.class Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;
.super Ljava/lang/Object;
.source "HtcFingerPrintQuickLaunch.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;


# direct methods
.method constructor <init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$300(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #setter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I
    invoke-static {v1, p3}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$402(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)I

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$500(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.htc.launcher.action.PICK_APP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
