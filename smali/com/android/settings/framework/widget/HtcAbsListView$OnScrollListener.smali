.class public abstract Lcom/android/settings/framework/widget/HtcAbsListView$OnScrollListener;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnScrollListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/settings/framework/widget/HtcAbsListView$OnScrollListener;->onScroll(Ljava/lang/Object;III)V

    return-void
.end method

.method public abstract onScroll(Ljava/lang/Object;III)V
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcAbsListView$OnScrollListener;->onScrollStateChanged(Ljava/lang/Object;I)V

    return-void
.end method

.method public abstract onScrollStateChanged(Ljava/lang/Object;I)V
.end method
