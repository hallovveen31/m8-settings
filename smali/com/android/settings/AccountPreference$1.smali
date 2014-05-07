.class Lcom/android/settings/AccountPreference$1;
.super Ljava/lang/Object;
.source "AccountPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccountPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccountPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/AccountPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/AccountPreference$1;->this$0:Lcom/android/settings/AccountPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/AccountPreference$1;->this$0:Lcom/android/settings/AccountPreference;

    #calls: Lcom/android/settings/AccountPreference;->onMenuBtnClick(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/settings/AccountPreference;->access$000(Lcom/android/settings/AccountPreference;Landroid/view/View;)V

    .line 152
    return-void
.end method
