.class public Lcom/android/settings/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Lcom/htc/widget/HtcListItemColorIcon;

.field public appOnSdCardIcon:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

.field public appStamp:Lcom/htc/widget/HtcListItem2LineStamp;

.field public appText:Lcom/htc/widget/HtcListItem2LineText;

.field public entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;
    .locals 3

    if-nez p1, :cond_0

    const v1, 0x7f0400a3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/AppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/applications/AppViewHolder;-><init>()V

    iput-object p1, v0, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    const v1, 0x7f090008

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appText:Lcom/htc/widget/HtcListItem2LineText;

    const v1, 0x7f090010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Lcom/htc/widget/HtcListItemColorIcon;

    const v1, 0x7f09004d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineStamp;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appStamp:Lcom/htc/widget/HtcListItem2LineStamp;

    const v1, 0x7f090150

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    iput-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->appOnSdCardIcon:Lcom/android/settings/framework/widget/HtcColorFilterImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method
