.class public Lcom/android/settings/accounts/MyHtcListItemColorIcon;
.super Lcom/htc/widget/HtcListItemColorIcon;
.source "MyHtcListItemColorIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/high16 v2, 0x108

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_0
    return-void
.end method
