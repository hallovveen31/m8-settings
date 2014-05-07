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
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$300(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #setter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I
    invoke-static {v1, p3}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$402(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;I)I

    .line 162
    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mAdapter:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;
    invoke-static {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$500(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->notifyDataSetChanged()V

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.launcher.action.PICK_APP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$2;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
