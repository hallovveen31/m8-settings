.class Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$3;
.super Ljava/lang/Object;
.source "HtcSingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->enableButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$3;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference$3;->this$0:Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;

    #calls: Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->onSettingsButtonClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;->access$400(Lcom/android/settings/inputmethod/HtcSingleSpellCheckerPreference;Landroid/view/View;)V

    const-string v0, "543"

    const-string v1, "111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
