.class Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;
.super Landroid/widget/ArrayAdapter;
.source "HtcAbsMutableListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onCreateListAdapter()Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    #getter for: Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mIsFirstBound:Z
    invoke-static {v0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->access$100(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->mIsFirstBound:Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->access$102(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;Z)Z

    .line 347
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    #calls: Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onFirstBindItemView(Landroid/view/ViewGroup;)V
    invoke-static {v0, p3}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->access$300(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;Landroid/view/ViewGroup;)V

    .line 358
    :cond_0
    if-nez p2, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->getCustomListItemLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->onBindListItemView(Landroid/widget/ListAdapter;ILandroid/view/View;)V

    .line 364
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference$3;->this$0:Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;

    #calls: Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->getEntryEnabledStates()[Z
    invoke-static {v0}, Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;->access$200(Lcom/android/settings/framework/preference/HtcAbsMutableListPreference;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    return v0
.end method
