.class public Lcom/android/settings/accounts/MyHtcListItemColorIcon;
.super Lcom/htc/widget/HtcListItemColorIcon;
.source "MyHtcListItemColorIcon.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemColorIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 14
    const/high16 v2, 0x108

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 15
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MyHtcListItemColorIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 17
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 18
    check-cast v0, Landroid/widget/ImageView;

    .line 19
    .local v0, image:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 20
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 24
    .end local v0           #image:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
