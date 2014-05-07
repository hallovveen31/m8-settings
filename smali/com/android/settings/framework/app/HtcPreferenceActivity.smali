.class Lcom/android/settings/framework/app/HtcPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "HtcPreferenceActivity.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcTodo;
    value = .enum Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;->SENSE_60:Lcom/android/settings/framework/os/annotation/HtcTodo$TaskType;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getHtcListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    return-object v0
.end method

.method protected final onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 50
    invoke-virtual/range {p0 .. p5}, Lcom/android/settings/framework/app/HtcPreferenceActivity;->onListItemClick(Ljava/lang/Object;Landroid/view/View;IJ)V

    .line 51
    return-void
.end method

.method protected onListItemClick(Ljava/lang/Object;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 56
    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-super/range {v0 .. v5}, Lcom/htc/preference/HtcPreferenceActivity;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 57
    return-void
.end method
