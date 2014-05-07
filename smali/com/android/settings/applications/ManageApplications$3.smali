.class Lcom/android/settings/applications/ManageApplications$3;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications;->applySearchActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$3;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$3;->this$0:Lcom/android/settings/applications/ManageApplications;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/applications/ManageApplications;->switchToSearchContainer(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/applications/ManageApplications;->access$000(Lcom/android/settings/applications/ManageApplications;Z)V

    .line 313
    return-void
.end method
