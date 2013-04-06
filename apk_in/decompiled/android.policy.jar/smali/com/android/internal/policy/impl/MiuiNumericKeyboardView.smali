.class public Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "MiuiNumericKeyboardView.java"


# instance fields
.field private final mKeyboard:Landroid/inputmethodservice/Keyboard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x6020264

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setBackgroundResource(I)V

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    const v1, 0x6030059

    invoke-direct {v0, p1, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->setPreviewEnabled(Z)V

    return-void
.end method


# virtual methods
.method public setLeftBottomKeyText(I)V
    .locals 2
    .parameter "textResId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public setLeftBottomKeyText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iput-object p1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRightBottomKeyText(I)V
    .locals 2
    .parameter "textResId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRightBottomKeyText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiNumericKeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iput-object p1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    return-void
.end method
