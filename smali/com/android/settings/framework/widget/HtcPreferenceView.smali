.class public Lcom/android/settings/framework/widget/HtcPreferenceView;
.super Lcom/android/settings/framework/widget/HtcAbsPreferenceView;
.source "HtcPreferenceView.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/widget/HtcAbsPreferenceView",
        "<",
        "Landroid/widget/TextView;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/widget/HtcAbsPreferenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic onInflateCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcPreferenceView;->onInflateCustomView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateCustomView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, summary:Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 44
    const v2, 0x2030042

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 48
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53
    return-object v1
.end method
