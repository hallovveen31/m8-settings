.class Lcom/android/settings/accounts/ManageAccounts$5;
.super Ljava/lang/Object;
.source "ManageAccounts.java"

# interfaces
.implements Lcom/htc/widget/IDividerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccounts;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccounts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccounts$5;->this$0:Lcom/android/settings/accounts/ManageAccounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDividerType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method
