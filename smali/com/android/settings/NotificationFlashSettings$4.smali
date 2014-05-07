.class Lcom/android/settings/NotificationFlashSettings$4;
.super Ljava/lang/Object;
.source "NotificationFlashSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NotificationFlashSettings;->showColorPickerDialog(ILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationFlashSettings;

.field final synthetic val$adapter:Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;

.field final synthetic val$listView:Lcom/htc/widget/HtcListView;

.field final synthetic val$response:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationFlashSettings;Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;Lcom/htc/widget/HtcListView;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationFlashSettings$4;->this$0:Lcom/android/settings/NotificationFlashSettings;

    iput-object p2, p0, Lcom/android/settings/NotificationFlashSettings$4;->val$adapter:Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;

    iput-object p3, p0, Lcom/android/settings/NotificationFlashSettings$4;->val$listView:Lcom/htc/widget/HtcListView;

    iput-object p4, p0, Lcom/android/settings/NotificationFlashSettings$4;->val$response:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v5, 0x7b

    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$4;->this$0:Lcom/android/settings/NotificationFlashSettings;

    iget-object v3, v3, Lcom/android/settings/NotificationFlashSettings;->mColorItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/NotificationFlashSettings$ColorItem;

    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$4;->val$adapter:Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;

    iget v4, v2, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    invoke-virtual {v3, v4}, Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;->setSelectColor(I)V

    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$4;->val$adapter:Lcom/android/settings/NotificationFlashSettings$ColorListViewAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$4;->val$listView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidateViews()V

    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$4;->val$response:Landroid/os/Message;

    iget v4, v2, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$4;->this$0:Lcom/android/settings/NotificationFlashSettings;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string v3, "notification_led_preview_tag"

    invoke-virtual {v0, v3, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iget v3, v2, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget v3, v2, Lcom/android/settings/NotificationFlashSettings$ColorItem;->colorValue:I

    iput v3, v1, Landroid/app/Notification;->ledARGB:I

    const-string v3, "notification_led_preview_tag"

    invoke-virtual {v0, v3, v5, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
