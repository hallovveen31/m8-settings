.class Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "HtcAbstractAppAssociationsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;
    }
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
.field holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

.field final synthetic this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 379
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 391
    if-nez p2, :cond_4

    .line 392
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mContext:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-static {v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$000(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)Lcom/htc/preference/HtcPreferenceActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 393
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04007b

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 394
    new-instance v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;-><init>(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;)V

    iput-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    .line 396
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    const v2, 0x7f090010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->appIconImageView:Landroid/widget/ImageView;

    .line 397
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    const v2, 0x7f09002a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 398
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    const v2, 0x7f09003a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->subTitleTextView:Landroid/widget/TextView;

    .line 399
    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    const v2, 0x7f0900f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRadioButton;

    iput-object v2, v3, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    .line 401
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 407
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->appIconImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->appIconImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppIconResIds:[Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$100(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->titleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 418
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$300(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 430
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->subTitleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #getter for: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->mAppEntries2:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$400(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 439
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v2, :cond_3

    .line 440
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 442
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->this$0:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;

    #calls: Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->getValueIndex()I
    invoke-static {v2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$500(Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;)I

    move-result v2

    if-ne p1, v2, :cond_5

    .line 443
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 452
    :cond_3
    :goto_4
    return-object p2

    .line 404
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iput-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 420
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 421
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->titleTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 431
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 432
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->subTitleTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 446
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1;->holder:Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference$1$ViewHolder;->radioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_4
.end method
