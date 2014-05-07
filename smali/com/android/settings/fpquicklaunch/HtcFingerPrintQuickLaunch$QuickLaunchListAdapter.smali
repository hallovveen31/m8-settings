.class public Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HtcFingerPrintQuickLaunch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuickLaunchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field items:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field res:I

.field final synthetic this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;


# direct methods
.method public constructor <init>(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->items:[Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->res:I

    iput-object p2, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->res:I

    invoke-virtual {v2, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    instance-of v5, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v5, :cond_1

    move-object v5, p2

    check-cast v5, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setLastComponentAlign(Z)V

    :cond_1
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem1LineCenteredText;

    const v5, 0x1020001

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRadioButton;

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->items:[Ljava/lang/String;

    aget-object v5, v5, p1

    iget-object v6, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mQuickLaunchItemChooseAppilcation:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$1100(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->items:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch$QuickLaunchListAdapter;->this$0:Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;

    #getter for: Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->mSelection:I
    invoke-static {v5}, Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;->access$400(Lcom/android/settings/fpquicklaunch/HtcFingerPrintQuickLaunch;)I

    move-result v5

    if-ne v5, p1, :cond_4

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    goto :goto_0
.end method
