.class Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "NotificationShelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationShelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShelfState"
.end annotation


# instance fields
.field private hasItemsInStableShelf:Z

.field private maxShelfEnd:F

.field private openedAmount:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    return p1
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationShelf;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .prologue
    .line 679
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->-get1(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 685
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 669
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->-get1(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->-get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 675
    return-void
.end method
