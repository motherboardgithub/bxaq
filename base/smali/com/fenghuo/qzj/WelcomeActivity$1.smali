.class Lcom/fenghuo/qzj/WelcomeActivity$1;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fenghuo/qzj/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fenghuo/qzj/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/fenghuo/qzj/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const/high16 v11, -0x10000

    const/4 v10, 0x2

    const v9, 0x7f07000c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v7, v0, Lcom/fenghuo/qzj/WelcomeActivity;->secondCount:I

    .line 125
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v7, v0, Lcom/fenghuo/qzj/WelcomeActivity;->minCount:I

    .line 126
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v7, v0, Lcom/fenghuo/qzj/WelcomeActivity;->hCount:I

    .line 127
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 129
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$002(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$100(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 132
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$100(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/fenghuo/qzj/WelcomeActivity;->access$200(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    const-string v1, "count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    const-string v2, "position"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 139
    const-string v3, "time"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-string v4, "scandir_count"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v4, ""

    .line 143
    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    array-length v4, v0

    if-lt v4, v10, :cond_2

    .line 148
    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_app_position:I

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v5}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v5}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v5}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v4}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v4}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 155
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 157
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v1, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x15

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 158
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 159
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    aget-object v4, v1, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v1, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    aget-object v5, v1, v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x3

    const/16 v4, 0x15

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$300(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v4}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 166
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 168
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x15

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 173
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v4}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 177
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 178
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 179
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x15

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$100(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 196
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$100(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 201
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$002(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$002(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 204
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/fenghuo/qzj/WelcomeActivity$1$1;

    invoke-direct {v1, p0}, Lcom/fenghuo/qzj/WelcomeActivity$1$1;-><init>(Lcom/fenghuo/qzj/WelcomeActivity$1;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 213
    :pswitch_4
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$000(Lcom/fenghuo/qzj/WelcomeActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 215
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fenghuo/qzj/WelcomeActivity;->access$002(Lcom/fenghuo/qzj/WelcomeActivity;Ljava/util/Timer;)Ljava/util/Timer;

    goto/16 :goto_0

    .line 219
    :pswitch_5
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v1, v0, Lcom/fenghuo/qzj/WelcomeActivity;->secondCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fenghuo/qzj/WelcomeActivity;->secondCount:I

    .line 220
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v0, v0, Lcom/fenghuo/qzj/WelcomeActivity;->secondCount:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_5

    .line 222
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v7, v0, Lcom/fenghuo/qzj/WelcomeActivity;->secondCount:I

    .line 223
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v1, v0, Lcom/fenghuo/qzj/WelcomeActivity;->minCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fenghuo/qzj/WelcomeActivity;->minCount:I

    .line 224
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v0, v0, Lcom/fenghuo/qzj/WelcomeActivity;->minCount:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_5

    .line 226
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iput v7, v0, Lcom/fenghuo/qzj/WelcomeActivity;->minCount:I

    .line 227
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v1, v0, Lcom/fenghuo/qzj/WelcomeActivity;->hCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fenghuo/qzj/WelcomeActivity;->hCount:I

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v0, v0, Lcom/fenghuo/qzj/WelcomeActivity;->minCount:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v0, v0, Lcom/fenghuo/qzj/WelcomeActivity;->hCount:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 232
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v0, v0, Lcom/fenghuo/qzj/WelcomeActivity;->secondCount:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v10, :cond_6

    .line 235
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 237
    const-string v0, "00"

    .line 243
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v10, :cond_7

    .line 245
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 247
    const-string v1, "00"

    .line 253
    :cond_7
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v10, :cond_8

    .line 255
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 257
    const-string v2, "00"

    .line 263
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v3}, Lcom/fenghuo/qzj/WelcomeActivity;->access$500(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v5}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 250
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 260
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 266
    :pswitch_6
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v2, v2, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    iget v2, v2, Lcom/fenghuo/qzj/WelcomeActivity;->scandir_position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 269
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 270
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 271
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    const/16 v3, 0x15

    invoke-virtual {v2, v1, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 273
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$600(Lcom/fenghuo/qzj/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/fenghuo/utils/Global;->mSdCardPath_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cjlog_plain.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fenghuo/utils/Util;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_c

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 281
    :cond_c
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-static {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->access$700(Lcom/fenghuo/qzj/WelcomeActivity;)V

    goto/16 :goto_0

    .line 284
    :cond_d
    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/fenghuo/utils/Util;->formatTimeStampString(J)Ljava/lang/String;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v1}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    iget-object v2, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v2}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 289
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$1$2;

    invoke-direct {v2, p0}, Lcom/fenghuo/qzj/WelcomeActivity$1$2;-><init>(Lcom/fenghuo/qzj/WelcomeActivity$1;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    iget-object v0, p0, Lcom/fenghuo/qzj/WelcomeActivity$1;->this$0:Lcom/fenghuo/qzj/WelcomeActivity;

    invoke-virtual {v0}, Lcom/fenghuo/qzj/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/fenghuo/qzj/WelcomeActivity$1$3;

    invoke-direct {v2, p0}, Lcom/fenghuo/qzj/WelcomeActivity$1$3;-><init>(Lcom/fenghuo/qzj/WelcomeActivity$1;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
