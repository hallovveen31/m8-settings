.class Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;
.super Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcNotificationItemListenerListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationAccessSettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;-><init>(Lcom/android/settings/NotificationAccessSettings;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->item:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    iget-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->iconView:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    #getter for: Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/NotificationAccessSettings;->access$100(Lcom/android/settings/NotificationAccessSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    #getter for: Lcom/android/settings/NotificationAccessSettings;->mPM:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/NotificationAccessSettings;->access$100(Lcom/android/settings/NotificationAccessSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    iget-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->checkboxView:Lcom/htc/widget/HtcCheckBox;

    iget-object v3, p0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemListenerListAdapter;->this$0:Lcom/android/settings/NotificationAccessSettings;

    invoke-virtual {v3, v1}, Lcom/android/settings/NotificationAccessSettings;->isListenerEnabled(Landroid/content/pm/ServiceInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    iget-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->item:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    return-void
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/NotificationAccessSettings$ListenerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04006d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;

    invoke-direct {v0}, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;-><init>()V

    const v2, 0x7f0900a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->item:Lcom/htc/widget/HtcListItem;

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->iconView:Lcom/htc/widget/HtcListItemColorIcon;

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->textView:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    iput-object v2, v0, Lcom/android/settings/NotificationAccessSettings$HtcNotificationItemViewHolder;->checkboxView:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
